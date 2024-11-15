package ryry.playground.network

import ryry.playground.network.apollo.ApolloNetwork
import ryry.playground.network.requests.UserNetwork

interface Network {
    suspend fun userNetwork(): UserNetwork
}

class DelegateNetwork(private val apolloNetwork: ApolloNetwork) : Network {
    override suspend fun userNetwork(): UserNetwork {
        return apolloNetwork.userNetwork()
    }
}