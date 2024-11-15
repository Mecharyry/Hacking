package ryry.playground

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.DisposableEffect
import androidx.compose.ui.Modifier
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import dagger.hilt.android.AndroidEntryPoint
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import ryry.playground.api.contract.Api
import ryry.playground.persistence.contract.Persistence
import ryry.playground.screens.login.LoginScreen
import ryry.playground.screens.splash.SplashScreen
import ryry.playground.ui.theme.PlaygroundTheme
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    @Inject
    lateinit var appNavigator: AppNavigator

    @Inject
    lateinit var persistence: Persistence

    @Inject
    lateinit var api: Api

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
                Scaffold(
                    modifier = Modifier.fillMaxSize(),
                ) { innerPadding ->
                    NavHost(
                        modifier = Modifier.padding(innerPadding),
                        navController = navController,
                        startDestination = Route.Splash.direction
                    ) {
                        composable(route = Route.Splash.direction) {
                            SplashScreen(api)
                        }
                        composable(route = Route.Login.direction) {
                            LoginScreen()
                        }
                    }
                }
            }
        }
    }
}