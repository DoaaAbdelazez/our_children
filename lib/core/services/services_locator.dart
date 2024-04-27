import 'package:get_it/get_it.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/core/database/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
