package ryry.playground.screens.splash

import androidx.lifecycle.ViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import javax.inject.Inject

@HiltViewModel
class SplashScreenViewModel @Inject constructor(private val appNavigator: AppNavigator) :
    ViewModel() {
    fun navigateToLogin() = appNavigator.navigateTo(Route.Login)
}