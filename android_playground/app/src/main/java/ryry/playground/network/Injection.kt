package ryry.playground.network

import com.apollographql.apollo.ApolloClient
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory
import ryry.playground.network.apollo.ApolloNetwork
import ryry.playground.network.rest.RestNetwork
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object NetworkModules {
    private const val BASE_URL = "https://mac.marlin-yo.ts.net/"

    @Provides
    @Singleton
    fun provideRestHttpClient(): Retrofit {
        return Retrofit.Builder()
            .baseUrl(BASE_URL + "api/")
            .addConverterFactory(MoshiConverterFactory.create())
            .build()
    }

    @Provides
    @Singleton
    fun provideRestNetwork(retrofit: Retrofit): RestNetwork {
        return RestNetwork(retrofit)
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
    fun provideApolloNetwork(apolloClient: ApolloClient): ApolloNetwork {
        return ApolloNetwork(apolloClient)
    }

    @Provides
    @Singleton
    fun provideNetwork(apolloNetwork: ApolloNetwork, restNetwork: RestNetwork): Network {
        return DelegateNetwork(apolloNetwork, restNetwork)
    }
}