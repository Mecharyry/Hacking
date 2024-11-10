package ryry.playground.screens.login

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import ryry.playground.navigation.AppNavigator

class LoginScreenViewModel(private val appNavigator: AppNavigator) : ViewModel() {
    private var _uiState = MutableStateFlow(LoginData("Welcome to Login!"))
    var uiState: StateFlow<LoginData> = _uiState.asStateFlow()

    fun navigateToSplash() = appNavigator.navigateToSplash()
}

data class LoginData(val title: String)