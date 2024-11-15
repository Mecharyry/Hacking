package ryry.playground.network.requests

import ryry.playground.domain.models.User

interface UserNetwork {
    suspend fun fetchUser(): User
}