package ryry.playground.network

import com.apollographql.apollo.ApolloClient
import ryry.playground.GetUserQuery

class ApolloNetwork(private val apolloClient: ApolloClient) : Network {
    override suspend fun fetchUsername(): String {
        return apolloClient.query(GetUserQuery()).execute()
            .data?.user?.username ?: "No data"
    }
}