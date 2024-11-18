package ryry.playground.domain.use_cases

import ryry.playground.domain.repositories.ProductsRepository

class GetProductsUseCase(private val productsRepository: ProductsRepository) {

    fun observe() = productsRepository.observeProducts()

    suspend fun fetch() = productsRepository.fetchProducts()
}