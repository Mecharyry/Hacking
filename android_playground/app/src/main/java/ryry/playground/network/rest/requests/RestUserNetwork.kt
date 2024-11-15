package ryry.playground.network.rest.requests

import retrofit2.Retrofit
import ryry.playground.domain.models.User
import ryry.playground.network.requests.UserNetwork
import ryry.playground.network.rest.internal.UsersApi

class RestUserNetwork(retrofit: Retrofit) : UserNetwork {

    private val userApi = retrofit.create(UsersApi::class.java)

    override suspend fun fetchUser(): User = userApi.fetchUser("1")?.execute().let {
        return it?.body() ?: User("unknown", "unknown")
    }
}