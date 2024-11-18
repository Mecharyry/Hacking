package ryry.playground.domain.use_cases

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import ryry.playground.domain.repositories.ProductsRepository
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object UseCasesModule {
    @Provides
    @Singleton
    fun provideGetProductsUseCase(productsRepository: ProductsRepository) =
        GetProductsUseCase(
            productsRepository
        )

}