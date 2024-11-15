package ryry.playground.api.retrofit

import retrofit2.Retrofit
import ryry.playground.api.contract.Api
import ryry.playground.api.contract.UserApi
import ryry.playground.api.retrofit.api.RetrofitUserApi

class RetrofitApi(retrofit: Retrofit) : Api {
    private val userNetwork = RetrofitUserApi(retrofit)

    override suspend fun userApi(): UserApi = userNetwork
}