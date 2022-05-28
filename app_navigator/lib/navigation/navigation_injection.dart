import 'package:app_navigator/navigation/app_navigator.dart';
import 'package:app_navigator/utilities/injection.dart';

void setupNavigationInjection() {
  getIt.registerSingleton(AppNavigator());
}
