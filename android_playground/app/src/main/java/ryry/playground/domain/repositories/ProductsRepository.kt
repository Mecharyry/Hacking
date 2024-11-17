package ryry.playground.domain.repositories

import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.emitAll
import kotlinx.coroutines.flow.flow
import ryry.playground.data.products.ProductsLocalDataSource
import ryry.playground.data.products.ProductsRemoteDataSource
import ryry.playground.domain.models.Outcome
import ryry.playground.domain.models.Product
import ryry.playground.system_boundaries.api.contract.NetworkOutcome
import ryry.playground.utils.asOutcome

class ProductsRepository(
    private val localDataSource: ProductsLocalDataSource,
    private val remoteDataSource: ProductsRemoteDataSource
) {

    private val _productsFlow =
        MutableStateFlow<Outcome<List<Product>>>(Outcome.Success(emptyList()))
    private val productsFlow: Flow<Outcome<List<Product>>> = _productsFlow.asStateFlow()

    suspend fun fetchProducts() {
        _productsFlow.tryEmit(Outcome.Loading())
        delay(1000)

        when (val productsApiOutcome = remoteDataSource.fetchProducts()) {
            is NetworkOutcome.Success -> {
                val products = productsApiOutcome.data
                localDataSource.insertProducts(*products.toTypedArray())
                _productsFlow.tryEmit(products.asOutcome())
            }

            is NetworkOutcome.Failure -> {
                _productsFlow.tryEmit(productsApiOutcome.exception.asOutcome())
            }
        }
    }

    fun observeProducts(): Flow<Outcome<List<Product>>> = flow {
        val products = localDataSource.fetchProducts()
        emit(products.asOutcome())
        emitAll(productsFlow)
    }
}