package ryry.playground.api

import com.apollographql.apollo.ApolloClient
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory
import ryry.playground.api.apollo.ApolloApi
import ryry.playground.api.contract.DelegateApi
import ryry.playground.api.contract.Api
import ryry.playground.api.retrofit.RetrofitApi
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object NetworkModules {
    private const val BASE_URL = "https://mac.marlin-yo.ts.net/"

    @Provides
    @Singleton
    fun provideRetrofitHttpClient(): Retrofit {
        return Retrofit.Builder()
            .baseUrl(BASE_URL + "api/")
            .addConverterFactory(MoshiConverterFactory.create())
            .build()
    }

    @Provides
    @Singleton
    fun provideRetrofitApi(retrofit: Retrofit): RetrofitApi {
        return RetrofitApi(retrofit)
    }

    @Provides
    @Singleton
    fun provideApolloClient(): ApolloClient {
        return ApolloClient.Builder()
            .serverUrl(BASE_URL)
            .build()
    }

    @Provides
    @Singleton
    fun provideApolloApi(apolloClient: ApolloClient): ApolloApi {
        return ApolloApi(apolloClient)
    }

    @Provides
    @Singleton
    fun provideApi(apolloNetwork: ApolloApi, restNetwork: RetrofitApi): Api {
        return DelegateApi(apolloNetwork, restNetwork)
    }
}