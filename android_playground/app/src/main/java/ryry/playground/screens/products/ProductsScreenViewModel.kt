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
import kotlinx.coroutines.flow.onStart
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import ryry.playground.domain.models.Outcome
import ryry.playground.domain.repositories.ProductsRepository
import ryry.playground.navigation.AppNavigator
import javax.inject.Inject

@HiltViewModel
class ProductsScreenViewModel @Inject constructor(
    private val appNavigator: AppNavigator,
    private val productsRepository: ProductsRepository
) :
    ViewModel() {
    private var _uiState =
        MutableStateFlow<ProductsScreenData>(ProductsScreenData.Loading("Loading..."))
    var uiState: StateFlow<ProductsScreenData> = _uiState.asStateFlow()

    init {
        viewModelScope.launch {
            productsRepository.observeProducts()
                .onStart {
                    productsRepository.fetchProducts()
                }
                .flowOn(Dispatchers.IO)
                .map {
                    when (it) {
                        is Outcome.Success -> ProductsScreenData.Success(
                            ProductsScreenSuccess(
                                it.data.map { product ->
                                    Product(
                                        title = product.title,
                                        description = product.description,
                                        image = product.mediaUrl
                                    )
                                }
                            )
                        )

                        is Outcome.Failure -> ProductsScreenData.Error(
                            it.exception.message ?: "An error occurred"
                        )

                        is Outcome.Loading -> ProductsScreenData.Loading("Loading...")
                    }
                }
                .flowOn(Dispatchers.Main)
                .collect {
                    _uiState.value = it
                }

        }
    }

    fun refresh() {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                productsRepository.fetchProducts()
            }
        }
    }
}

sealed class ProductsScreenData {
    data class Loading(val message: String) : ProductsScreenData()
    data class Success(val data: ProductsScreenSuccess) : ProductsScreenData()
    data class Error(val message: String) : ProductsScreenData()
}

data class ProductsScreenSuccess(val items: List<Product>)

data class Product(val title: String, val description: String, val image: String)