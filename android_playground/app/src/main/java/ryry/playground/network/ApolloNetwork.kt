package ryry.playground.network

import com.apollographql.apollo.ApolloClient
import com.apollographql.apollo.api.http.HttpHeader
import ryry.playground.GetUserQuery

class ApolloNetwork(private val apolloClient: ApolloClient) : Network {
    override suspend fun fetchUsername(): String {
        return apolloClient
            .query(GetUserQuery())
            .httpHeaders(listOf(HttpHeader("x-user-id", "user:1")))
            .execute()
            .data?.user?.username ?: "Unknown"
    }
}