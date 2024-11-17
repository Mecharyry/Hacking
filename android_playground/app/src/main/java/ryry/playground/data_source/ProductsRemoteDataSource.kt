package ryry.playground.data_source

import ryry.playground.api.contract.Api

class ProductsRemoteDataSource(private val api: Api) {

    suspend fun fetchProducts() = api.productsApi().fetchProducts()

}