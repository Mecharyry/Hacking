package ryry.playground.system_boundaries.api.retrofit

import retrofit2.Retrofit
import ryry.playground.api.contract.ProductsApi
import ryry.playground.api.contract.UserApi
import ryry.playground.system_boundaries.api.retrofit.api.RetrofitProductsApi
import ryry.playground.api.retrofit.api.RetrofitUserApi

class RetrofitApi(retrofit: Retrofit) {
    private val userApi = RetrofitUserApi(retrofit)
    private val productsApi =
        ryry.playground.system_boundaries.api.retrofit.api.RetrofitProductsApi(retrofit)

    suspend fun userApi(): UserApi = userApi

    suspend fun productsApi(): ProductsApi = productsApi
}