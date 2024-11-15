package ryry.playground.persistence.in_memory.tables

import ryry.playground.domain.models.User
import ryry.playground.persistence.tables.UserPersistence

class InMemoryUserPersistence : UserPersistence {
    private val users = mutableListOf<User>()

    override fun getAll(): List<User> {
        return users
    }

    override fun loadAllByIds(userIds: IntArray): List<User> {
        return users.filter { it.uid in userIds }
    }

    override fun findByName(first: String, last: String): User {
        return users.first { it.firstName == first && it.lastName == last }
    }

    override fun insertAll(vararg users: User) {
        this.users.addAll(users)
    }

    override fun delete(user: User) {
        users.remove(user)
    }
}