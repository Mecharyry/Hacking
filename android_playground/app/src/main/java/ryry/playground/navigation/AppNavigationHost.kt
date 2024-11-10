package ryry.playground.navigation

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import ryry.playground.screens.LoginScreen
import ryry.playground.screens.SplashScreen

@Composable
fun AppNavigationHost(
    modifier: Modifier = Modifier,
    startDestination: String = NavigationItem.Splash.route,
) {
    val navController = rememberNavController();
    val appNavigator = AppNavigator(navController)

    NavHost(
        modifier = modifier,
        navController = navController,
        startDestination = startDestination
    ) {
        composable(NavigationItem.Splash.route) {
            SplashScreen()
        }
        composable(NavigationItem.Login.route) {
            LoginScreen()
        }
    }
}