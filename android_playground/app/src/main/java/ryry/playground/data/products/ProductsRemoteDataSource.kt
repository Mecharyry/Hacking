package ryry.playground.data.products

import okio.IOException
import retrofit2.HttpException
import ryry.playground.domain.models.Product
import ryry.playground.system_boundaries.api.contract.Api
import ryry.playground.system_boundaries.api.contract.NetworkOutcome
import ryry.playground.system_boundaries.api.contract.asNetworkOutcome

class ProductsRemoteDataSource(private val api: Api) {

    suspend fun fetchProducts(): NetworkOutcome<List<Product>> = try {
        api.productsApi().fetchProducts().asNetworkOutcome()
    } catch (e: HttpException) {
        when (e.code()) {
            404 -> NetworkOutcome.Failure(Exception("Products not found"))
            else -> e.asNetworkOutcome()
        }
    } catch (e: IOException) {
        NetworkOutcome.Failure(Exception("Network error"))
    } catch (e: Exception) {
        NetworkOutcome.Failure(e)
    }
}
