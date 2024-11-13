package ryry.playground.navigation

import kotlinx.serialization.Serializable

@Serializable
sealed class Route(val direction: String) {
    @Serializable
    data object Splash : Route("splash")
    @Serializable
    data object Login : Route("login")
}