package ryry.playground.system_boundaries.persistence.in_memory

import ryry.playground.system_boundaries.persistence.contract.UserPersistence
import ryry.playground.system_boundaries.persistence.in_memory.tables.InMemoryProductPersistence
import ryry.playground.system_boundaries.persistence.in_memory.tables.InMemoryUserPersistence

class InMemoryPersistence {
    private val userPersistence = InMemoryUserPersistence()
    private val productPersistence = InMemoryProductPersistence()

    fun userPersistence(): UserPersistence = userPersistence

    fun productPersistence() = productPersistence
}