package ryry.playground.network.apollo.requests

import com.apollographql.apollo.ApolloClient
import com.apollographql.apollo.api.http.HttpHeader
import ryry.playground.GetUserQuery
import ryry.playground.domain.models.User
import ryry.playground.network.requests.UserNetwork

class ApolloUserNetwork(private val apolloClient: ApolloClient) : UserNetwork {
    override suspend fun fetchUser(): User {
        apolloClient
            .query(GetUserQuery())
            .httpHeaders(listOf(HttpHeader("x-user-id", "user:1")))
            .execute()
            .data?.user?.let {
                return User(it.id, it.username)
            } ?: throw IllegalStateException("User not found")
    }
}