package ryry.playground.data.products

import ryry.playground.domain.models.Product
import ryry.playground.persistence.contract.Persistence

class ProductsLocalDataSource(private val persistence: Persistence) {

    suspend fun fetchProducts(): List<Product> = persistence.productPersistence().getAll()

    suspend fun fetchProductById(id: String): Product =
        persistence.productPersistence().findById(id)

    suspend fun insertProducts(vararg products: Product) =
        persistence.productPersistence().insertAll(*products)

    suspend fun deleteProduct(product: Product) = persistence.productPersistence().delete(product)
}