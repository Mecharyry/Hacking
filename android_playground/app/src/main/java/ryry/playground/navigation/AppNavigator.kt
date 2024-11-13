package ryry.playground.navigation

import androidx.navigation.NavController
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.android.components.ActivityComponent
import dagger.hilt.components.SingletonComponent
import javax.inject.Inject

@Module
@InstallIn(SingletonComponent::class)
interface MyModule {

    @Binds
    abstract fun bindMyDependency(impl: NavHostBasedAppNavigator): AppNavigator
}

interface AppNavigator {
    fun setController(navController: NavController)

    fun navigateTo(route: Route)

    fun popBackStack()

    fun clear()
}

class NavHostBasedAppNavigator @Inject constructor() : AppNavigator {

    private var navController: NavController? = null

    override fun setController(navController: NavController) {
        this.navController = navController
    }

    override fun navigateTo(route: Route) {
        navController?.navigate(
            route.direction
        )
    }

    override fun popBackStack() {
        navController?.popBackStack()
    }

    override fun clear() {
        navController = null
    }
}