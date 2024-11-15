package ryry.playground.api.retrofit.internal

import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Path
import ryry.playground.domain.models.User

interface RetrofitUsersApi {
    @GET("users/{id}")
    fun fetchUser(@Path("id") id: String): Call<User?>?
}