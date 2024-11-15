package ryry.playground.persistence.in_memory

import ryry.playground.persistence.contract.Persistence
import ryry.playground.persistence.in_memory.tables.InMemoryUserPersistence
import ryry.playground.persistence.contract.UserPersistence

class InMemoryPersistence : Persistence {
    private val userPersistence = InMemoryUserPersistence()

    override fun userPersistence(): UserPersistence = userPersistence
}