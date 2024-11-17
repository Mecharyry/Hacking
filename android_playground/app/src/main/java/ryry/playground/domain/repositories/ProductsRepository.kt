package ryry.playground.domain.repositories

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import ryry.playground.data.products.ProductsLocalDataSource
import ryry.playground.data.products.ProductsRemoteDataSource
import ryry.playground.domain.models.Product

class ProductsRepository(
    private val localDataSource: ProductsLocalDataSource,
    private val remoteDataSource: ProductsRemoteDataSource
) {

    fun fetchProducts(): Flow<List<Product>> = flow {
        val products = remoteDataSource.fetchProducts()
        localDataSource.insertProducts(*products.toTypedArray())
        emit(products)
    }
}