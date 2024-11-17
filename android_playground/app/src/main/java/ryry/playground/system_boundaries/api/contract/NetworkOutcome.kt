package ryry.playground.system_boundaries.api.contract

sealed class NetworkOutcome<out T> {
    data class Success<T>(val data: T) : NetworkOutcome<T>()
    data class Failure(val exception: Exception) : NetworkOutcome<Nothing>()
}

fun <T> T.asNetworkOutcome(): NetworkOutcome<T> {
    return NetworkOutcome.Success(this)
}

fun <T> Exception.asNetworkOutcome(): NetworkOutcome<T> {
    return NetworkOutcome.Failure(this)
}
