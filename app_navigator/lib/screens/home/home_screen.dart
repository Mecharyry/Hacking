import 'package:app_navigator/screens/home/home_cubit.dart';
import 'package:app_navigator/screens/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utilities/injection.dart';

class HomeScreen extends StatelessWidget {
  static WidgetBuilder builder = (context) => const HomeScreen._();

  const HomeScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>()..loadData(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Navigtor: The Problem'),
        actions: [
          IconButton(
            onPressed: () => context.read<HomeCubit>().navigateToSettings(),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) => state.when(
                loading: () => const CircularProgressIndicator.adaptive(),
                loaded: () => const _LoadedWidget(),
              ),
            )
          ],
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
