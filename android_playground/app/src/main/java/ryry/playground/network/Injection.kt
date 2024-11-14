package ryry.playground.network

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import com.apollographql.apollo.ApolloClient
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object NetworkModules {
    @Provides
    @Singleton
    fun provideApolloClient(): ApolloClient {
        return ApolloClient.Builder()
            .serverUrl("https://mac.marlin-yo.ts.net/")
            .build()
    }

    @Provides
    @Singleton
    fun provideApolloNetwork(apolloClient: ApolloClient): ApolloNetwork {
        return ApolloNetwork(apolloClient)
    }

    @Provides
    @Singleton
    fun provideNetwork(apolloNetwork: ApolloNetwork): Network {
        return DelegateNetwork(apolloNetwork)
    }
}