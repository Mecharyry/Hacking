package ryry.playground.persistence.room.internal

import androidx.room.ColumnInfo
import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Entity
import androidx.room.Insert
import androidx.room.PrimaryKey
import androidx.room.Query

@Entity
data class User(
    @PrimaryKey val uid: String,
    @ColumnInfo(name = "username") val username: String,
)

@Dao
interface UserDao {
    @Query("SELECT * FROM user")
    fun getAll(): List<User>

    @Query("SELECT * FROM user WHERE uid IN (:userIds)")
    fun loadAllByIds(userIds: Array<String>): List<User>

    @Query(
        "SELECT * FROM user WHERE username LIKE :username LIMIT 1"
    )
    fun findByUsername(username: String): User

    @Insert
    fun insertAll(vararg users: User)

    @Delete
    fun delete(user: User)
}