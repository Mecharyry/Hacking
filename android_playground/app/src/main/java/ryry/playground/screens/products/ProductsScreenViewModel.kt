package ryry.playground.screens.products

import androidx.lifecycle.ViewModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import javax.inject.Inject

@HiltViewModel
class SplashScreenViewModel @Inject constructor(private val appNavigator: AppNavigator) :
    ViewModel() {
    private var _uiState = MutableStateFlow(ProductsScreenData.Loading("Loading..."))
    var uiState: StateFlow<ProductsScreenData> = _uiState.asStateFlow()


    fun navigateToLogin() = appNavigator.navigateTo(Route.Login)
}

sealed class ProductsScreenData {
    data class Loading(val message: String) : ProductsScreenData()
    data class Success(val data: ProductsScreenSuccess) : ProductsScreenData()
    data class Error(val message: String) : ProductsScreenData()
}

data class ProductsScreenSuccess(val items: List<Product>)

data class Product(val title: String, val description: String, val image: String)