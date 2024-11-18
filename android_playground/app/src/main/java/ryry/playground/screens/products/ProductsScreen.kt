package ryry.playground.screens.products

import androidx.compose.animation.animateColor
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.pulltorefresh.PullToRefreshBox
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import coil3.compose.AsyncImage
import ryry.playground.R

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProductsScreen(
    viewModel: ProductsScreenViewModel = hiltViewModel(),
    modifier: Modifier = Modifier,
) {
    var filterText by remember { mutableStateOf(TextFieldValue("")) }
    val uiState by viewModel.uiState.collectAsState()

    val infiniteTransition = rememberInfiniteTransition(label = "skeletonTransition")
    val color by infiniteTransition.animateColor(
        initialValue = Color.Gray,
        targetValue = Color.LightGray,
        animationSpec = infiniteRepeatable(
            animation = tween(durationMillis = 1000, easing = LinearEasing),
            repeatMode = RepeatMode.Reverse
        ), label = "skeletonColorTransition"
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Item List") },
                actions = {
                    when (uiState) {
                        is ProductsScreenData.Error,
                        is ProductsScreenData.Loading -> {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .clip(CircleShape)
                                    .background(color)
                            )
                        }

                        is ProductsScreenData.Success -> {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .clip(CircleShape)
                                    .background(Color.Blue),
                                contentAlignment = Alignment.Center
                            ) {
                                Text(
                                    text = "R",
                                    color = Color.White,
                                    style = MaterialTheme.typography.headlineMedium
                                )
                            }
                        }
                    }
                }
            )
        },
        content = { padding ->
            PullToRefreshBox(
                isRefreshing = uiState is ProductsScreenData.Loading,
                onRefresh = viewModel::refresh,
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(padding)
                ) {
                    when (uiState) {
                        is ProductsScreenData.Error -> {
                            val message = (uiState as ProductsScreenData.Error).message
                            Box(
                                modifier = Modifier.fillMaxSize(),
                                contentAlignment = Alignment.Center
                            ) {
                                Text(message)
                            }
                        }

                        is ProductsScreenData.Loading -> {
                            LazyColumn {
                                items(5) {
                                    Card(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(8.dp)
                                    ) {
                                        Column(
                                            modifier = Modifier
                                                .padding(16.dp)
                                                .background(color)
                                        ) {
                                            Box(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .height(180.dp)
                                                    .background(color)
                                            )
                                            Spacer(modifier = Modifier.height(8.dp))
                                            Box(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .height(20.dp)
                                                    .background(color)
                                            )
                                            Spacer(modifier = Modifier.height(4.dp))
                                            Box(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .height(14.dp)
                                                    .background(color)
                                            )
                                        }
                                    }
                                }
                            }
                        }

                        is ProductsScreenData.Success -> {
                            val items = (uiState as ProductsScreenData.Success).data.items
                            BasicTextField(
                                value = filterText,
                                onValueChange = { filterText = it },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(16.dp),
                                decorationBox = { innerTextField ->
                                    Box(
                                        modifier = Modifier
                                            .background(Color.LightGray, CircleShape)
                                            .padding(horizontal = 16.dp, vertical = 12.dp)
                                    ) {
                                        if (filterText.text.isEmpty()) {
                                            Text("Filter items...", color = Color.Gray)
                                        }
                                        innerTextField()
                                    }
                                }
                            )
                            LazyColumn {
                                items(items.size) { index ->
                                    val item = items[index]
                                    Card(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(8.dp)
                                    ) {
                                        Column(
                                            modifier = Modifier.padding(16.dp)
                                        ) {
                                            AsyncImage(
                                                model = item.image,
                                                contentDescription = item.title,
                                                contentScale = ContentScale.Crop,
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .height(180.dp)
                                            )
                                            Spacer(modifier = Modifier.height(8.dp))
                                            Text(
                                                text = item.title,
                                                style = MaterialTheme.typography.headlineSmall
                                            )
                                            Spacer(modifier = Modifier.height(4.dp))
                                            Text(
                                                text = item.description,
                                                style = MaterialTheme.typography.bodyMedium
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    )
}