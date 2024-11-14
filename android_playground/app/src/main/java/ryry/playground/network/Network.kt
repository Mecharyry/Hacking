package ryry.playground.network

interface Network {
    suspend fun fetchUsername(): String
}

class DelegateNetwork(private val apolloNetwork: ApolloNetwork) : Network {
    override suspend fun fetchUsername(): String = apolloNetwork.fetchUsername()
}