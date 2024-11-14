package ryry.playground.persistence.tables

import ryry.playground.persistence.models.User

interface UserPersistence {
    fun getAll(): List<User>
    fun loadAllByIds(userIds: IntArray): List<User>
    fun findByName(first: String, last: String): User
    fun insertAll(vararg users: User)
    fun delete(user: User)
}