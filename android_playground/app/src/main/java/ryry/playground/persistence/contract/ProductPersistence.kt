package ryry.playground.persistence.contract

import ryry.playground.domain.models.Product

interface ProductPersistence {
    fun getAll(): List<Product>
    fun findById(id: String): Product
    fun insertAll(vararg products: Product)
    fun delete(product: Product)
}