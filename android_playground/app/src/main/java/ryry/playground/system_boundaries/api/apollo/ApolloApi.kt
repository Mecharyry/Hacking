package ryry.playground.system_boundaries.api.apollo

import com.apollographql.apollo.ApolloClient
import ryry.playground.system_boundaries.api.apollo.api.ApolloUserApi
import ryry.playground.system_boundaries.api.contract.UserApi

class ApolloApi(apolloClient: ApolloClient) {
    private val userApi = ApolloUserApi(apolloClient)

    suspend fun userApi(): UserApi = userApi
}