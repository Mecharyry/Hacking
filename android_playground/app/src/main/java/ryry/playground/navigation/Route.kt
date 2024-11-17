package ryry.playground.navigation

import kotlinx.serialization.Serializable

@Serializable
sealed class Route(val direction: String) {
    @Serializable
    data object Products : Route("products")

    @Serializable
    data object Login : Route("login")
}