package ryry.playground.api.retrofit.api

import retrofit2.Retrofit
import ryry.playground.api.contract.ProductsApi
import ryry.playground.api.retrofit.internal.RetrofitProductsApi
import ryry.playground.domain.models.Product

class RetrofitProductsApi(retrofit: Retrofit) : ProductsApi {

    private val productsApi = retrofit.create(RetrofitProductsApi::class.java)

    override suspend fun fetchProducts(): List<Product> =
        productsApi.fetchProducts()?.execute()?.body() ?: emptyList()
}