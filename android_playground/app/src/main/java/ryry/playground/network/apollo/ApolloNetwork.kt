package ryry.playground.network.apollo

import com.apollographql.apollo.ApolloClient
import ryry.playground.network.Network
import ryry.playground.network.apollo.requests.ApolloUserNetwork
import ryry.playground.network.requests.UserNetwork

class ApolloNetwork(apolloClient: ApolloClient) : Network {
    private val userNetwork = ApolloUserNetwork(apolloClient)

    override suspend fun userNetwork(): UserNetwork = userNetwork
}