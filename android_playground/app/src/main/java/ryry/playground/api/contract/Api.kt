package ryry.playground.api.contract

import ryry.playground.api.apollo.ApolloApi
import ryry.playground.api.retrofit.RetrofitApi

interface Api {
    suspend fun userApi(): UserApi
}

class DelegateApi(
    private val apolloApi: ApolloApi,
    private val retrofitApi: RetrofitApi
) : Api {
    override suspend fun userApi(): UserApi {
        return retrofitApi.userApi()
    }
}