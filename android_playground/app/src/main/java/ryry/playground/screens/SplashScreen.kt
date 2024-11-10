package ryry.playground.screens

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun SplashScreen(
    modifier: Modifier = Modifier,
) {
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