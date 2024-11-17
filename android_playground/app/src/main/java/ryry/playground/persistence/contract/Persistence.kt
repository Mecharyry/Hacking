package ryry.playground.persistence.contract

import ryry.playground.persistence.in_memory.InMemoryPersistence
import ryry.playground.persistence.room.RoomPersistence

interface Persistence {
    fun userPersistence(): UserPersistence
    fun productPersistence(): ProductPersistence
}

class DelegatePersistence(
    private val roomPersistence: RoomPersistence,
    private val inMemoryPersistence: InMemoryPersistence
) : Persistence {
    override fun userPersistence(): UserPersistence = roomPersistence.userPersistence()

    override fun productPersistence(): ProductPersistence = inMemoryPersistence.productPersistence()
}

