package ryry.playground.navigation

enum class Route {
    SPLASH,
    LOGIN,
}

sealed class NavigationItem(val route: String) {
    data object Splash : NavigationItem(Route.SPLASH.name)
    data object Login : NavigationItem(Route.LOGIN.name)
}