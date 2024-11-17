package ryry.playground.domain.repositories

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import ryry.playground.data_source.ProductsLocalDataSource
import ryry.playground.data_source.ProductsRemoteDataSource
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object RepositoriesModule {
    @Provides
    @Singleton
    fun provideProductsRepository(
        productsLocalDataSource: ProductsLocalDataSource,
        productsRemoteDataSource: ProductsRemoteDataSource,
    ): ProductsRepository = ProductsRepository(productsLocalDataSource, productsRemoteDataSource)
}