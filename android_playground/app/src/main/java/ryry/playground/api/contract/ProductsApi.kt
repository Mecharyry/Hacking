package ryry.playground.api.contract

import ryry.playground.domain.models.Product

interface ProductsApi {
    suspend fun fetchProducts(): List<Product>
}