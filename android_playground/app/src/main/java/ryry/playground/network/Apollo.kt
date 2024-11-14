package ryry.playground.network

import com.apollographql.apollo.ApolloClient


val apolloClient = ApolloClient.Builder()
    .serverUrl("https://apollo-fullstack-tutorial.herokuapp.com/graphql")
    .build()