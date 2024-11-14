package ryry.playground.persistence.room

import androidx.room.Database
import androidx.room.RoomDatabase

@Database(entities = [User::class], version = 1)
abstract class RoomPersistence : RoomDatabase() {
    abstract fun userDao(): UserDao
}