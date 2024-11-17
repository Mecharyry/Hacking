package ryry.playground.system_boundaries.api.apollo.api

import com.apollographql.apollo.ApolloClient
import com.apollographql.apollo.api.http.HttpHeader
import ryry.playground.GetUserQuery
import ryry.playground.domain.models.User
import ryry.playground.api.contract.UserApi

class ApolloUserApi(private val apolloClient: ApolloClient) : UserApi {
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