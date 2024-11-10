package ryry.playground.navigation

import androidx.navigation.NavController

class AppNavigator(private val navController: NavController) {
    fun navigateToSplash() = navController.navigate(Route.SPLASH.name)
    fun navigateToLogin() = navController.navigate(Route.LOGIN.name)
}