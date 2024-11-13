package ryry.playground.screens.login

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.hilt.navigation.compose.hiltViewModel
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun LoginScreen(
    viewModel: LoginScreenViewModel = hiltViewModel(),
    modifier: Modifier = Modifier
) {
    Box(
        contentAlignment = Alignment.Center,
        modifier = modifier.fillMaxSize()
    ) {
        Button(onClick = { viewModel.navigateToSplash() }) {
            Text(text = "Navigate to Splash Screen")
        }
    }
}

@Preview(showBackground = true)
@Composable
fun LoginScreenPreview() {
    PlaygroundTheme {
        LoginScreen()
    }
}