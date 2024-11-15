package ryry.playground.api.apollo

import com.apollographql.apollo.ApolloClient
import ryry.playground.api.contract.Api
import ryry.playground.api.apollo.api.ApolloUserApi
import ryry.playground.api.contract.UserApi

class ApolloApi(apolloClient: ApolloClient) : Api {
    private val userNetwork = ApolloUserApi(apolloClient)

    override suspend fun userApi(): UserApi = userNetwork
}