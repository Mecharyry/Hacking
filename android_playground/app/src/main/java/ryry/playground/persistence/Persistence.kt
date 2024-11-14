package ryry.playground.persistence

import ryry.playground.persistence.in_memory.InMemoryPersistence
import ryry.playground.persistence.room.RoomPersistence
import ryry.playground.persistence.tables.UserPersistence

interface Persistence {
    fun userPersistence(): UserPersistence
}

class DelegatePersistence(
    private val roomPersistence: RoomPersistence,
    private val inMemoryPersistence: InMemoryPersistence
) : Persistence {
    override fun userPersistence(): UserPersistence = roomPersistence.userPersistence()
}

