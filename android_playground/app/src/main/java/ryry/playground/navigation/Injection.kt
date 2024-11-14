package ryry.playground.navigation

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object NavigationModules {
    @Provides
    @Singleton
    fun provideAppNavigator(): AppNavigator {
        return NavHostBasedAppNavigator()
    }
}