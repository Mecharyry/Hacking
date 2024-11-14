package ryry.playground.persistence.room

import ryry.playground.persistence.Persistence
import ryry.playground.persistence.room.internal.RoomDatabase
import ryry.playground.persistence.room.tables.RoomUserPersistence
import ryry.playground.persistence.tables.UserPersistence

class RoomPersistence(roomDatabase: RoomDatabase) : Persistence {
    private val userPersistence = RoomUserPersistence(roomDatabase)

    override fun userPersistence(): UserPersistence = userPersistence
}