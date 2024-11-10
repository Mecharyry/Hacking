package ryry.playground.screens.splash

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import ryry.playground.navigation.AppNavigator

class SplashScreenViewModel(private val appNavigator: AppNavigator) : ViewModel() {
    fun navigateToLogin() {
        viewModelScope.launch(Dispatchers.Main) {
            delay(1000)
            appNavigator.navigateToSplash()
        }
    }
}