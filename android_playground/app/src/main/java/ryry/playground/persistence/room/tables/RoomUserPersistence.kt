package ryry.playground.persistence.room.tables

import ryry.playground.domain.models.User
import ryry.playground.persistence.room.internal.RoomDatabase
import ryry.playground.persistence.tables.UserPersistence

class RoomUserPersistence(private val roomDatabase: RoomDatabase) : UserPersistence {
    override fun getAll(): List<User> {
        return roomDatabase.userDao().getAll().map {
            User(it.uid, it.username)
        }
    }

    override fun loadAllByIds(userIds: Array<String>): List<User> {
        return roomDatabase.userDao().loadAllByIds(userIds).map {
            User(it.uid, it.username)
        }
    }

    override fun findByUsername(username: String): User {
        return roomDatabase.userDao().findByUsername(username).let {
            User(it.uid, it.username)
        }
    }

    override fun insertAll(vararg users: User) {
        users.map {
            ryry.playground.persistence.room.internal.User(
                it.id,
                it.username,
            )
        }.toTypedArray().let {
            roomDatabase.userDao().insertAll(*it)
        }
    }

    override fun delete(user: User) {
        user.let {
            ryry.playground.persistence.room.internal.User(
                it.id,
                it.username,
            )
        }.let {
            roomDatabase.userDao().delete(it)
        }
    }
}