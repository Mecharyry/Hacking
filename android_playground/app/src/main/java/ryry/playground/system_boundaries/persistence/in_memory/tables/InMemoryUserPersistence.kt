package ryry.playground.system_boundaries.persistence.in_memory.tables

import ryry.playground.domain.models.User
import ryry.playground.system_boundaries.persistence.contract.UserPersistence

class InMemoryUserPersistence : UserPersistence {
    private val users = mutableListOf<User>()

    override fun getAll(): List<User> {
        return users
    }

    override fun loadAllByIds(userIds: Array<String>): List<User> {
        return users.filter { it.id in userIds }
    }

    override fun findByUsername(username: String): User {
        return users.first { it.username == username }
    }

    override fun insertAll(vararg users: User) {
        this.users.addAll(users)
    }

    override fun delete(user: User) {
        users.remove(user)
    }
}