package ryry.playground.data_source

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import ryry.playground.api.contract.Api
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