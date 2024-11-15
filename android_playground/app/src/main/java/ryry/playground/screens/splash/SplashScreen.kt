package ryry.playground.screens.splash

import android.util.Log
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.hilt.navigation.compose.hiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import ryry.playground.domain.models.User
import ryry.playground.network.Network
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun SplashScreen(
    network: Network,
    viewModel: SplashScreenViewModel = hiltViewModel(),
    modifier: Modifier = Modifier,
) {
    LaunchedEffect(Unit) {
        withContext(Dispatchers.IO) {
            val response = network.userNetwork().fetchUser()
            Log.d("RYRY", "Network call success $response")
        }
    }
    Box(
        contentAlignment = Alignment.Center,
        modifier = modifier.fillMaxSize()
    ) {
        Button(onClick = { viewModel.navigateToLogin() }) {
            Text(text = "Navigate to Login Screen")
        }
    }
}

@Preview(showBackground = true)
@Composable
fun SplashScreenPreview() {
    PlaygroundTheme {
        SplashScreen(network = object : Network {
            override suspend fun userNetwork() =
                object : ryry.playground.network.requests.UserNetwork {
                    override suspend fun fetchUser(): User {
                        return User("1", "ryry")
                    }
                }
        })
    }
}