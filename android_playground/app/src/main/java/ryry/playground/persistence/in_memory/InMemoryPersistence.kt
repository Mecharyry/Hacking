package ryry.playground.persistence.in_memory

import ryry.playground.persistence.in_memory.tables.InMemoryUserPersistence
import ryry.playground.persistence.contract.UserPersistence
import ryry.playground.persistence.in_memory.tables.InMemoryProductPersistence

class InMemoryPersistence {
    private val userPersistence = InMemoryUserPersistence()
    private val productPersistence = InMemoryProductPersistence()

    fun userPersistence(): UserPersistence = userPersistence

    fun productPersistence() = productPersistence
}