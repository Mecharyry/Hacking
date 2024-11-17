package ryry.playground

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.DisposableEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import dagger.hilt.android.AndroidEntryPoint
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import ryry.playground.screens.login.LoginScreen
import ryry.playground.screens.products.ProductsScreen
import ryry.playground.ui.theme.PlaygroundTheme
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    @Inject
    lateinit var appNavigator: AppNavigator

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            val navController = rememberNavController()
            // 4
            DisposableEffect(key1 = navController) {
                appNavigator.setController(navController)
                onDispose {
                    appNavigator.clear()
                }
            }

            PlaygroundTheme {
                NavHost(
                    modifier = Modifier
                        .padding(16.dp)
                        .fillMaxSize(),
                    navController = navController,
                    startDestination = Route.Products.direction
                ) {
                    composable(route = Route.Products.direction) {
                        ProductsScreen()
                    }
                    composable(route = Route.Login.direction) {
                        LoginScreen()
                    }
                }
            }
        }
    }
}