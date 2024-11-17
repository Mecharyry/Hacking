package ryry.playground.system_boundaries.api.retrofit.api

import retrofit2.Retrofit
import ryry.playground.system_boundaries.api.contract.UserApi
import ryry.playground.domain.models.User

class RetrofitUserApi(retrofit: Retrofit) : UserApi {

    private val userApi =
        retrofit.create(
            ryry.playground.system_boundaries.api.retrofit.internal.RetrofitUsersApi::class.java
        )

    override suspend fun fetchUser(): User = userApi.fetchUser("1")?.execute().let {
        return it?.body() ?: User("unknown", "unknown")
    }
}