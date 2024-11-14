package ryry.playground.persistence.room.internal

import androidx.room.Database
import androidx.room.RoomDatabase

@Database(entities = [User::class], version = 1)
abstract class RoomDatabase : RoomDatabase() {
    abstract fun userDao(): UserDao
}