import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/splash/presentation/view/splash_view.dart';
import 'package:our_children/core/services/services_locator.dart';

import '../../Features/First_Screen/first_screen.dart';
import '../../Features/auth/peresenration/views/sign_in_view.dart';
import '../../Features/auth/peresenration/views/sign_up_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/FirstScreenView",
    builder: (context, state) => const FirstScreenView(),
  ),
  GoRoute(
    path: "/SignUpView",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignUpView(),
    ),
  ),
  GoRoute(
    path: "/SignInView",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignInView(),
    ),
  ),
]);
