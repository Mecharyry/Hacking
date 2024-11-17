package ryry.playground.domain.models

sealed class Outcome<T> {
    data class Loading<T>(val data: T? = null) : Outcome<T>()
    data class Success<T>(val data: T) : Outcome<T>()
    data class Failure<T>(val exception: Exception) : Outcome<T>()
}