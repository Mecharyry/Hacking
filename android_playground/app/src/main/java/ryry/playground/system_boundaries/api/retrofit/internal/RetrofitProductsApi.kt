package ryry.playground.system_boundaries.api.retrofit.internal

import retrofit2.Call
import retrofit2.http.GET
import ryry.playground.domain.models.Product

interface RetrofitProductsApi {
    @GET("products")
    fun fetchProducts(): Call<List<Product>?>?
}