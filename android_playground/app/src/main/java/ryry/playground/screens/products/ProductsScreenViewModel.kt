package ryry.playground.screens.products

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.launch
import ryry.playground.domain.repositories.ProductsRepository
import ryry.playground.navigation.AppNavigator
import ryry.playground.navigation.Route
import javax.inject.Inject

@HiltViewModel
class ProductsScreenViewModel @Inject constructor(
    private val appNavigator: AppNavigator,
    productsRepository: ProductsRepository
) :
    ViewModel() {
    private var _uiState =
        MutableStateFlow<ProductsScreenData>(ProductsScreenData.Loading("Loading..."))
    var uiState: StateFlow<ProductsScreenData> = _uiState.asStateFlow()

    init {
        viewModelScope.launch {
            productsRepository.fetchProducts()
                .flowOn(Dispatchers.IO)
                .map {
                    ProductsScreenData.Success(ProductsScreenSuccess(it.map { product ->
                        Product(product.title, product.description, product.mediaUrl)
                    }))
                }
                .flowOn(Dispatchers.Main)
                .collect {
                    _uiState.value = it
                }

        }
    }

    fun navigateToLogin() = appNavigator.navigateTo(Route.Login)
}

sealed class ProductsScreenData {
    data class Loading(val message: String) : ProductsScreenData()
    data class Success(val data: ProductsScreenSuccess) : ProductsScreenData()
    data class Error(val message: String) : ProductsScreenData()
}

data class ProductsScreenSuccess(val items: List<Product>)

data class Product(val title: String, val description: String, val image: String)