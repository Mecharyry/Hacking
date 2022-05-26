import 'package:app_navigator/screens/home/home_cubit.dart';
import 'package:app_navigator/utilities/injection.dart';

void setupHomeInjection() {
  getIt.registerFactory(() => HomeCubit());
}
