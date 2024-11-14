package ryry.playground.persistence.in_memory

import ryry.playground.persistence.Persistence
import ryry.playground.persistence.in_memory.tables.InMemoryUserPersistence
import ryry.playground.persistence.tables.UserPersistence

class InMemoryPersistence : Persistence {
    private val userPersistence = InMemoryUserPersistence()

    override fun userPersistence(): UserPersistence = userPersistence
}