package ryry.playground.persistence

import android.content.Context
import androidx.room.Room.databaseBuilder
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import ryry.playground.persistence.room.RoomPersistence
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object PersistenceModule {
    @Provides
    @Singleton
    fun provideRoomPersistence(@ApplicationContext context: Context): RoomPersistence {
        return databaseBuilder(
            context,
            RoomPersistence::class.java, "database-name"
        ).build()
    }

    @Provides
    @Singleton
    fun providePersistence(roomPersistence: RoomPersistence): Persistence {
        return Persistence(roomPersistence);
    }
}