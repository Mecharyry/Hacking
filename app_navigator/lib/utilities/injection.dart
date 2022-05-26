import 'package:app_navigator/navigation/navigation_injection.dart';
import 'package:app_navigator/screens/home/home_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupInjection() async {
  setupNavigationInjection();
  setupHomeInjection();
}
