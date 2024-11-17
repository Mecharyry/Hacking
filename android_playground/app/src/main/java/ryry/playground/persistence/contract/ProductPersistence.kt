package ryry.playground.persistence.contract

import ryry.playground.domain.models.Product

interface ProductPersistence {
    suspend fun getAll(): List<Product>
    suspend fun findById(id: String): Product
    suspend fun insertAll(vararg products: Product)
    suspend fun delete(product: Product)
}