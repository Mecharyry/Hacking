package ryry.playground.screens.splash

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import ryry.playground.navigation.AppNavigator

class LoginScreenViewModel(private val appNavigator: AppNavigator) : ViewModel() {
    fun navigateToLogin() {
    }
}