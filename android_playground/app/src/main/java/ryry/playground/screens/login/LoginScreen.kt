package ryry.playground.screens.login

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.hilt.navigation.compose.hiltViewModel
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun LoginScreen(
    viewModel: LoginScreenViewModel = hiltViewModel(),
    modifier: Modifier = Modifier
) {
    val loginData by viewModel.uiState.collectAsState()
    Text(
        text = loginData.title,
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun LoginScreenPreview() {
    PlaygroundTheme {
        LoginScreen()
    }
}