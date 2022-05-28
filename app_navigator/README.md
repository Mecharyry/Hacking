# My Approach to Flutter App Navigation

Created: May 20, 2022 12:39 PM
Tags: Flutter

## Intro

This is primarily for future RyRy, those that need a helping hand with navigation in Flutter, or anyone who is genuinely interested in my approach to navigation in Flutter.

I’ll preface the rest of this by saying that I have thus far only worked with navigation on Android and iOS applications. I have not tried web or any of the other platforms, although they are on my radar and I would like to come back and do an update to this then.

## Named Routes

Named Routes ****allow navigation through the `Navigator.pushNamed(String)`. The consumer of `Navigator.pushNamed(BuildContext, String)` doesn’t need to have knowledge of how to construct a given Widget. The construction of a widgets is left to the `routes` property of the `MaterialApp` which maps a `String` to a `WidgetBuilder` . Using routes in this way can help to remove code duplication and creates a central point for routing in an application.

```dart
MaterialApp(
  title: 'Named Routes Demo',
  initialRoute: '/',
  routes: {
    '/': (context) => const HomeScreen(),
    '/second': (context) => const SettingsScreen(),
  },
) 

// and the client can call:

Navigator.pushNamed(context, '/');
```

### Static builder property

We can create a static property on each Screen that mimics the behaviour of the `MaterialApp` routes by mapping a `String` to a `WidgetBuilder` function. Now we can hide how are screens are constructed from the consumers.

```dart
class HomeScreen extends StatelessWidget {

   static MapEntry<String, Widget Function(BuildContext)> route = MapEntry(
      '/', (context) => const HomeScreen._()
   );
   
   const HomeScreen._({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Container();
   }
}
```

This can also be used to simplify the interface when constructing a screen that requires additional properties.

### Remove verbosity with typedefs

This is pretty verbose and writing this across multiple screens is eventually going to become annoying 😭

```dart
static MapEntry<String, Widget Function(BuildContext)> route = MapEntry(
   '/', (context) => const HomeScreen._()
);
```

Luckily we can introduce a `typedef` to reduce this verbosity somewhat:

```dart
typedef RouteEntry = MapEntry<String, Widget Function(BuildContext)>;
```

Now we can replace our whole `MapEntry` with just `RouteEntry` like this:

```dart
static RouteEntry route = RouteEntry(
   '/', (context) => const HomeScreen._()
);

**// and then in MaterialApp
routes: Map.fromEntries([
   HomeScreen.route,
   SettingsScreen.route,
]),**
```

## Moving `Navigator` out of the UI layer

`Navigator` is bound to the UI layer of an application because of its dependency on `BuildContext` that is passed as a parameter to each navigator function. In order for us to decouple it from the UI layer we need to remove this dependency.

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Navigtor: The Problem'),
        actions: [
          IconButton(
            **onPressed: () => Navigator.pushNamed(context, '/settings'),**
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => HomeCubit()..loadData(),
        child: const _Body(),
      ),
    );
  }
```

A `navigatorKey` passed to the `MaterialApp` widget allows a `Navigator` to be manipulated without first needing to obtain it with a `BuildContext`.

```dart
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      **navigatorKey: _navigator.navigatorKey,**
      initialRoute: HomeScreen.route.key,
      routes: Map.fromEntries([
        HomeScreen.route,
        SettingsScreen.route,
      ]),
    );
  }
```

### Creating an AppNavigator

The first step is to create a class that can encapsulate the navigation actions performed by the application and supply this `navigatorKey` to the `MaterialApp` widget.

```dart
class AppNavigator {
  final GlobalKey<NavigatorState> **navigatorKey** = GlobalKey<NavigatorState>();

  void navigateTo<T extends Object?>(String routeName) =>
      navigatorKey.currentState?.pushNamed(routeName);
}
```

Now we can access all of the navigation functions by just grabbing an instance of our `AppNavigator` without the need to deal with a `BuildContext`.

```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Navigtor: The Problem'),
        actions: [
          IconButton(
            **onPressed: () => getIt<AppNavigator>().navigateTo('/settings'),**
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => HomeCubit()..loadData(),
        child: const _Body(),
      ),
    );
  }
```

### But I need to pass something to the screen

That’s pretty easy, we can provide anything to the screen by adding an `Object? arguments` as an optional parameter to any of the navigator functions that support it.

```dart
class AppNavigator {
  final GlobalKey<NavigatorState> **navigatorKey** = GlobalKey<NavigatorState>();

  void navigateTo<T extends Object?>(String routeName, **{Object? arguments}**) =>
      navigatorKey.currentState?.pushNamed(routeName, **arguments: arguments**);
}
```

Now we can grab this on the other side from the context

```dart
final args = ModalRoute.of(context)!.settings.arguments as Object?;
```

### Dialogs, Banners, Bottom sheets, Snackbars?

These caused me a great deal of frustration for the longest time. `MaterialApp` from what I have seen doesn’t offer the same hook for these components as it does for screen level navigation 😭  

```dart
ScaffoldMessenger.of(context).showSnackBar();
ScaffoldMessenger.of(context).showMaterialBanner();
showDialog(context: context, builder: (context) => AlertDialog());
showModalBottomSheet(context: context, builder: (context) => Container());
```

We need something that functions similarly to screen level navigation. Something where we can pass a `String` route and arguments to generate one of our desired messengers. First create a `typedef` that can nicely define our function that goes from `String` to `WidgetBuilder`.

```dart
typedef BottomSheetEntry = MapEntry<String, WidgetBuilder>;
typedef BottomSheetEntries = Map<String, WidgetBuilder>;
```

Next create a mapping class that hides the routes but exposes a lookup function for grabbing the `WidgetBuilder`

```dart
class BottomSheetRoutes {
  final BottomSheetEntries _routes = Map.fromEntries({testBottomSheet});

  **WidgetBuilder? lookupRouteByName(String route) => _routes[route];**
}

// example_bottom_sheet.dart
BottomSheetEntry exampleBottomSheet = BottomSheetEntry(
  '/bottom_sheet/exampleBottomSheet',
  (context) => Container(
    height: 200,
    color: Colors.amber,
    child: const Center(
      child: Text('Hi there!'),
    ),
  ),
);
```

Now we can update our `AppNavigator` to support this bottom sheet by adding `BottomSheetRoutes` as a property.

```dart
Future<T?> pushBottomSheet<T>(String routeName, {Object? arguments}) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing a bottom sheet');

    final builder = _bottomSheetRoute.lookupRouteByName(routeName);
    assert(builder != null, 'BottomSheetRoutes does not contain a route with the name: $routeName');

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: arguments),
      isScrollControlled: true,
    );
  }
```

This exact process can be followed for each of the messenger types.

- Create a typedef. *This is more for reducing verbosity and makes it easier to reason than a full function signature.*
- Create a corresponding `Routes` class that exposes the lookup for widget builder
- Add an instance to the `AppNavigator` and add the corresponding navigator function

### String, really?

Yea you kind of have me on that one. Having each of these routes that go from `String` to `Widget` builder are great but I now have no type safety. I could be calling a route that is only supported for `BottomSheets` with a screen level `String` 😭

We could leverage the `freezed` library to create a **Union type / Sealed class**. I really love this because now we can use `when` to enforce that we are handling each of the states for this new type 🤩

```dart
class BottomSheetRoutes {
  final Map<BottomSheetRoute, WidgetBuilder?> _routes = {};

  WidgetBuilder? lookupRouteByName(BottomSheetRoute route) => route.when(
        example: () => exampleBottomSheet,
      );
}

@freezed
class BottomSheetRoute with _$BottomSheetRoute {
  factory BottomSheetRoute.example(String message) = ExampleBottomSheet;
}
```

The `AppNavigator` can now be updated to take this new type, enforcing type safety for each of our Navigator functions.

```dart
Future<T?> pushBottomSheet<T>(BottomSheetRoute route, {Object? arguments}) async {
    assert(navigatorKey.currentContext != null, 'navigation context is null when pushing bottom sheet');

    final builder = _bottomSheetRoute.lookupRouteByName(route);

    return await showModalBottomSheet(
      context: navigatorKey.currentContext!,
      builder: builder!,
      routeSettings: RouteSettings(arguments: arguments),
      isScrollControlled: true,
    );
  }
```

and now we are only exposing `BottomSheetRoute` to the rest of the app.

```dart
getIt<AppNavigator>().pushBottomSheet(BottomSheetRoute.example(message: 'Hi!'));
```

The added benefit is now we can pass in our arguments as part of the union to have more of a guarantee around type safety 😄 and we can remove one of the asserts! Our `WidgetBuilder` will never be `null` now!


## What’s Next?

So I’ve been looking into web apps and have started writing my own and the above strategy definitely does not work 😭  we need a better way to deal with route updates via the address bar and page refreshes 😬

The Flutter team has a Router API which should offer a solution, here. I’m going to attempt to implement a version of this router that still holds the following to be true:

We need to be able to manipulate the Navigator without first needing to obtain it with a BuildContext.

Type safety enforcement through union / sealed classes

Page construction is hidden away from the consumer of the navigator. i.e. they navigate by passing either a union or String

But until then, you can feel free to reach out to me with questions, criticisms, coding challenges or just a general chat.

RyRy 💛
