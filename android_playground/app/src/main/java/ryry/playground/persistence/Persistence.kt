package ryry.playground.persistence

import ryry.playground.persistence.room.RoomPersistence
import ryry.playground.persistence.tables.UserPersistence

interface Persistence {
    fun userPersistence(): UserPersistence
}

class DelegatePersistence(private val roomPersistence: RoomPersistence) : Persistence {
    override fun userPersistence(): UserPersistence = roomPersistence.userPersistence()
}

