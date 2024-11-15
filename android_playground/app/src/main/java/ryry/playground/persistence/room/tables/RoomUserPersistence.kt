package ryry.playground.persistence.room.tables

import ryry.playground.domain.models.User
import ryry.playground.persistence.room.internal.RoomDatabase
import ryry.playground.persistence.tables.UserPersistence

class RoomUserPersistence(private val roomDatabase: RoomDatabase) : UserPersistence {
    override fun getAll(): List<User> {
        return roomDatabase.userDao().getAll().map {
            User(it.uid, it.firstName, it.lastName)
        }
    }

    override fun loadAllByIds(userIds: IntArray): List<User> {
        return roomDatabase.userDao().loadAllByIds(userIds).map {
            User(it.uid, it.firstName, it.lastName)
        }
    }

    override fun findByName(first: String, last: String): User {
        return roomDatabase.userDao().findByName(first, last).let {
            User(it.uid, it.firstName, it.lastName)
        }
    }

    override fun insertAll(vararg users: User) {
        users.map {
            ryry.playground.persistence.room.internal.User(
                it.uid,
                it.firstName,
                it.lastName
            )
        }.toTypedArray().let {
            roomDatabase.userDao().insertAll(*it)
        }
    }

    override fun delete(user: User) {
        user.let {
            ryry.playground.persistence.room.internal.User(
                it.uid,
                it.firstName,
                it.lastName
            )
        }.let {
            roomDatabase.userDao().delete(it)
        }
    }
}