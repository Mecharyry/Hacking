package ryry.playground.system_boundaries.api.retrofit.api

import retrofit2.Retrofit
import ryry.playground.domain.models.Product
import ryry.playground.system_boundaries.api.contract.ProductsApi

class RetrofitProductsApi(retrofit: Retrofit) : ProductsApi {

    private val productsApi =
        retrofit.create(
            ryry.playground.system_boundaries.api.retrofit.internal.RetrofitProductsApi::class.java
        )

    override suspend fun fetchProducts(): List<Product> =
        productsApi.fetchProducts()?.execute()?.body() ?: emptyList()
}