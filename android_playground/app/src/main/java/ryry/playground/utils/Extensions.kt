package ryry.playground.utils

import ryry.playground.domain.models.Outcome


fun <T> T.asOutcome(): Outcome<T> {
    return Outcome.Success(this)
}

fun <T> Exception.asOutcome(): Outcome<T> {
    return Outcome.Failure(this)
}

fun <T> asLoading(data: T? = null): Outcome<T> {
    return Outcome.Loading(data)
}