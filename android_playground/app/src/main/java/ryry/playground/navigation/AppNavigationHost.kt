package ryry.playground.navigation

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import ryry.playground.screens.login.LoginScreen
import ryry.playground.screens.splash.SplashScreen

@Composable
fun AppNavigationHost(
    modifier: Modifier = Modifier,
) {
    val navController = rememberNavController();
    val appNavigator = AppNavigator(navController)

    NavHost(
        modifier = modifier,
        navController = navController,
        startDestination = NavigationItem.Splash.route
    ) {
        composable(NavigationItem.Splash.route) {
            SplashScreen()
        }
        composable(NavigationItem.Login.route) {
            LoginScreen()
        }
    }
}