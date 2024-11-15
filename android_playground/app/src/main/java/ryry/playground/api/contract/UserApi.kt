package ryry.playground.api.contract

import ryry.playground.domain.models.User

interface UserApi {
    suspend fun fetchUser(): User
}