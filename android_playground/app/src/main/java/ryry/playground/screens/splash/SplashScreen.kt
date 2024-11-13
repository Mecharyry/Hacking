package ryry.playground.screens.splash

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.hilt.navigation.compose.hiltViewModel
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun SplashScreen(
    viewModel: SplashScreenViewModel = hiltViewModel(),
    modifier: Modifier = Modifier,
) {
    viewModel.navigateToLogin()
    Text(
        text = "Splash Screen",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun SplashScreenPreview() {
    PlaygroundTheme {
        SplashScreen()
    }
}