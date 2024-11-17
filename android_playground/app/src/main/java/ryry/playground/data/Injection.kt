package ryry.playground.data

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import ryry.playground.api.contract.Api
import ryry.playground.data.products.ProductsLocalDataSource
import ryry.playground.data.products.ProductsRemoteDataSource
import ryry.playground.persistence.contract.Persistence
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DataSourcesModule {
    @Provides
    @Singleton
    fun provideProductsRemoteDataSource(api: Api): ProductsRemoteDataSource =
        ProductsRemoteDataSource(api)

    @Provides
    @Singleton
    fun provideProductsLocalDataSource(persistence: Persistence): ProductsLocalDataSource =
        ProductsLocalDataSource(persistence)
}