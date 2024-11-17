package ryry.playground.system_boundaries.persistence.room

import ryry.playground.persistence.room.internal.RoomDatabase
import ryry.playground.persistence.room.tables.RoomUserPersistence
import ryry.playground.persistence.contract.UserPersistence

class RoomPersistence(roomDatabase: RoomDatabase) {
    private val userPersistence = RoomUserPersistence(roomDatabase)

    fun userPersistence(): UserPersistence = userPersistence
}