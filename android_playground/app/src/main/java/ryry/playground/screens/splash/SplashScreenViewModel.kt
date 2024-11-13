package ryry.playground.screens.splash

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import javax.inject.Inject

@HiltViewModel
class SplashScreenViewModel @Inject constructor(private val appNavigator: AppNavigator) : ViewModel() {
    fun navigateToLogin() {
        viewModelScope.launch(Dispatchers.Main) {
            delay(1000)
            appNavigator.navigateTo(Route.Splash)
        }
    }
}