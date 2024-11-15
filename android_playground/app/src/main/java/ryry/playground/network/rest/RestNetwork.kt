package ryry.playground.network.rest

import retrofit2.Retrofit
import ryry.playground.network.Network
import ryry.playground.network.requests.UserNetwork
import ryry.playground.network.rest.requests.RestUserNetwork

class RestNetwork(retrofit: Retrofit) : Network {
    private val userNetwork = RestUserNetwork(retrofit)

    override suspend fun userNetwork(): UserNetwork = userNetwork
}