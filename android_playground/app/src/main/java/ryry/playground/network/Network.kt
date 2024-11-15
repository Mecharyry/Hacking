package ryry.playground.network

import ryry.playground.network.apollo.ApolloNetwork
import ryry.playground.network.requests.UserNetwork
import ryry.playground.network.rest.RestNetwork

interface Network {
    suspend fun userNetwork(): UserNetwork
}

class DelegateNetwork(
    private val apolloNetwork: ApolloNetwork,
    private val restNetwork: RestNetwork
) : Network {
    override suspend fun userNetwork(): UserNetwork {
        return restNetwork.userNetwork()
    }
}