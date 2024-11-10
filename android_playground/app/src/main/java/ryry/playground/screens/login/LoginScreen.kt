package ryry.playground.screens.login

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import ryry.playground.ui.theme.PlaygroundTheme

@Composable
fun LoginScreen(modifier: Modifier = Modifier) {
    Text(
        text = "Login Screen",
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