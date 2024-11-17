package ryry.playground.api.apollo

import com.apollographql.apollo.ApolloClient
import ryry.playground.api.apollo.api.ApolloUserApi
import ryry.playground.api.contract.UserApi

class ApolloApi(apolloClient: ApolloClient) {
    private val userNetwork = ApolloUserApi(apolloClient)

    suspend fun userApi(): UserApi = userNetwork
}