import 'package:app_navigator/navigation/app_navigator.dart';
import 'package:app_navigator/screens/home/home_cubit.dart';
import 'package:app_navigator/screens/home/home_state.dart';
import 'package:app_navigator/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/typedefs.dart';
import '../../utilities/do_nothing.dart';
import '../../utilities/injection.dart';

class HomeScreen extends StatelessWidget {
  static RouteEntry route = RouteEntry(
    '/',
    (context) => const HomeScreen._(),
  );

  const HomeScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Navigtor: The Problem'),
        actions: [
          IconButton(
            onPressed: () => getIt<AppNavigator>().navigateTo(SettingsScreen.route.key),
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
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocConsumer<HomeCubit, HomeState>(
            listenWhen: (_, current) => current.maybeMap(
              showBanner: (_) => true,
              showDialog: (_) => true,
              showBottomSheet: (_) => true,
              orElse: () => false,
            ),
            listener: (context, state) => state.maybeWhen(
              showBanner: (message) => _showBanner(context, message),
              showDialog: (message) => _showDialog(context, message),
              showBottomSheet: (message) => _showBottomSheet(context, message),
              orElse: () => doNothing('Other states are not handled'),
            ),
            buildWhen: (_, current) => current.maybeMap(
              loading: (_) => true,
              loaded: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) => state.maybeWhen(
              loading: () => const CircularProgressIndicator.adaptive(),
              orElse: () => const _LoadedWidget(),
            ),
          )
        ],
      ),
    );
  }

  void _showBanner(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        backgroundColor: Colors.amber,
        content: SizedBox(
          height: 50,
          child: Center(child: Text(message)),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Hey! I'm a snackbar called from a banner!")),
            ),
            child: const Text('Show snackbar'),
          ),
          ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
            child: const Text('Dismiss'),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Dialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Dismiss'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context, String message) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Text(message),
        ),
      ),
    );
  }
}

class _LoadedWidget extends StatelessWidget {
  const _LoadedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.read<HomeCubit>().showBanner(),
            child: const Text('Show Banner'),
          ),
          ElevatedButton(
            onPressed: () => context.read<HomeCubit>().showDialog(),
            child: const Text('Show Dialog'),
          ),
          ElevatedButton(
            onPressed: () => context.read<HomeCubit>().showBottomSheet(),
            child: const Text('Show Bottom Sheet'),
          ),
        ],
      ),
    );
  }
}
