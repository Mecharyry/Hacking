package ryry.playground.persistence

import ryry.playground.persistence.room.RoomPersistence

class Persistence(private val roomPersistence: RoomPersistence) {
    fun getUserDao() = roomPersistence.userDao()
}