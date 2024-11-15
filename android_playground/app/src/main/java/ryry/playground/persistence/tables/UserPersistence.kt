package ryry.playground.persistence.tables

import ryry.playground.domain.models.User

interface UserPersistence {
    fun getAll(): List<User>
    fun loadAllByIds(userIds: Array<String>): List<User>
    fun findByUsername(username: String): User
    fun insertAll(vararg users: User)
    fun delete(user: User)
}