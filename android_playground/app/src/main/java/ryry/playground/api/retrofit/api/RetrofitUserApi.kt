package ryry.playground.api.retrofit.api

import retrofit2.Retrofit
import ryry.playground.domain.models.User
import ryry.playground.api.contract.UserApi
import ryry.playground.api.retrofit.internal.RetrofitUsersApi

class RetrofitUserApi(retrofit: Retrofit) : UserApi {

    private val userApi = retrofit.create(RetrofitUsersApi::class.java)

    override suspend fun fetchUser(): User = userApi.fetchUser("1")?.execute().let {
        return it?.body() ?: User("unknown", "unknown")
    }
}