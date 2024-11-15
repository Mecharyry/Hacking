package ryry.playground.persistence

import android.content.Context
import androidx.room.Room.databaseBuilder
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import ryry.playground.persistence.contract.DelegatePersistence
import ryry.playground.persistence.contract.Persistence
import ryry.playground.persistence.in_memory.InMemoryPersistence
import ryry.playground.persistence.room.RoomPersistence
import ryry.playground.persistence.room.internal.RoomDatabase
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object PersistenceModule {
    @Provides
    @Singleton
    fun provideRoomDatabase(@ApplicationContext context: Context): RoomDatabase {
        return databaseBuilder(
            context,
            RoomDatabase::class.java, "database-name"
        ).build()
    }

    @Provides
    @Singleton
    fun provideRoomPersistence(roomDatabase: RoomDatabase): RoomPersistence {
        return RoomPersistence(roomDatabase)
    }

    @Provides
    @Singleton
    fun provideInMemoryPersistence(): InMemoryPersistence {
        return InMemoryPersistence()
    }

    @Provides
    @Singleton
    fun providePersistence(
        roomPersistence: RoomPersistence,
        inMemoryPersistence: InMemoryPersistence
    ): Persistence {
        return DelegatePersistence(roomPersistence, inMemoryPersistence)
    }
}