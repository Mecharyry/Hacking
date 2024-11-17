package ryry.playground.system_boundaries.persistence.room.tables

import ryry.playground.domain.models.User
import ryry.playground.system_boundaries.persistence.contract.UserPersistence
import ryry.playground.system_boundaries.persistence.room.internal.RoomDatabase

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
            ryry.playground.system_boundaries.persistence.room.internal.User(
                it.id,
                it.username,
            )
        }.toTypedArray().let {
            roomDatabase.userDao().insertAll(*it)
        }
    }

    override fun delete(user: User) {
        user.let {
            ryry.playground.system_boundaries.persistence.room.internal.User(
                it.id,
                it.username,
            )
        }.let {
            roomDatabase.userDao().delete(it)
        }
    }
}