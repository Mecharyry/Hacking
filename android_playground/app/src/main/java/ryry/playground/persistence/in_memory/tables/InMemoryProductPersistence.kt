package ryry.playground.persistence.in_memory.tables

import ryry.playground.domain.models.Product
import ryry.playground.persistence.contract.ProductPersistence

class InMemoryProductPersistence : ProductPersistence {
    private val products = mutableListOf<Product>()

    override fun getAll(): List<Product> {
        return products
    }

    override fun findById(id: String): Product {
        return products.first { it.id == id }
    }

    override fun insertAll(vararg products: Product) {
        this.products.addAll(products)
    }

    override fun delete(product: Product) {
        products.remove(product)
    }
}