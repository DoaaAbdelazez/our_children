import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:our_children/Features/Rules_screen/rules_screen_view.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/auth/peresenration/screens/forget_password_view.dart';
import 'package:our_children/Features/choose_screen/choose_screen_view.dart';
import 'package:our_children/Features/auth/peresenration/screens/splash_view.dart';
import 'package:our_children/Features/home/presentation/Screens/all_user_screen.dart';
import 'package:our_children/Features/home/presentation/Screens/resul_screen.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/core/database/api/dio_consumer.dart';

import '../../Features/First_Screen/first_screen_view.dart';
import '../../Features/auth/peresenration/screens/resete_password_view.dart';
import '../../Features/auth/peresenration/screens/sign_in_view.dart';
import '../../Features/auth/peresenration/screens/sign_up_view.dart';
import '../../Features/home/presentation/Screens/report_screen.dart';
import '../../Features/home/presentation/Screens/search_Screen.dart';

final GoRouter router = GoRouter(
  routes: [
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
        create: (context) => AuthCubit(DioConsumer(Dio())),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: "/SignInView",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(DioConsumer(Dio())),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: "/RulesScreenView",
      builder: (context, state) => const RulesScreenView(),
    ),
    GoRoute(
      path: "/ForgetPasswordView",
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: "/ResetePasswordView",
      builder: (context, state) => const ResetePasswordView(),
    ),
    GoRoute(
      path: "/ChooseScreenView",
      builder: (context, state) => const ChooseScreenView(),
    ),
    GoRoute(
      path: "/SearchScreen",
      builder: (context, state) => BlocProvider(
        create: (context) => HomeCubit(DioConsumer(Dio())),
        child: const SearchScreen(),
      ),
    ),
    GoRoute(
      path: "/ReportScreen",
      builder: (context, state) => BlocProvider(
        create: (context) => HomeCubit(DioConsumer(Dio())),
        child: const ReportScreen(),
      ),
    ),
    // GoRoute(
    //   path: "/ResulteScreen",
    //   builder: (context, state) => BlocProvider(
    //     create: (context) => HomeCubit(DioConsumer(Dio())),
    //     child: const ResulteScreen(),
    //   ),
    // ),
    GoRoute(
      path: "/AllUserScreen",
      builder: (context, state) => BlocProvider(
        create: (context) => HomeCubit(DioConsumer(Dio())),
        child: const AllUserScreen(),
      ),
    ),
  ],
);
