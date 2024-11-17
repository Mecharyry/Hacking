package ryry.playground.system_boundaries.api.contract

import ryry.playground.domain.models.Product

interface ProductsApi {
    suspend fun fetchProducts(): List<Product>
}