package ryry.playground.screens.login

import androidx.lifecycle.ViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import javax.inject.Inject

@HiltViewModel
class LoginScreenViewModel @Inject constructor(private val appNavigator: AppNavigator) :
    ViewModel() {
    private var _uiState = MutableStateFlow(LoginData("Welcome to Login!"))
    var uiState: StateFlow<LoginData> = _uiState.asStateFlow()

    fun navigateToSplash() = appNavigator.navigateTo(Route.Products)
}

data class LoginData(val title: String)