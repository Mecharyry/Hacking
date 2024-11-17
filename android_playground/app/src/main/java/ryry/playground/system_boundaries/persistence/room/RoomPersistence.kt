package ryry.playground.system_boundaries.persistence.room

import ryry.playground.system_boundaries.persistence.contract.UserPersistence
import ryry.playground.system_boundaries.persistence.room.internal.RoomDatabase
import ryry.playground.system_boundaries.persistence.room.tables.RoomUserPersistence

class RoomPersistence(roomDatabase: RoomDatabase) {
    private val userPersistence = RoomUserPersistence(roomDatabase)

    fun userPersistence(): UserPersistence = userPersistence
}