import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_cubit.dart';
import 'package:our_children/Features/home/presentation/home_cubit/cubit/home_cubit.dart';
import 'package:our_children/core/database/api/dio_consumer.dart';
import 'package:our_children/core/database/cache/cache_helper.dart';
import 'package:our_children/core/services/services_locator.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(DioConsumer(Dio())),
        ),
        BlocProvider(
          create: (context) => HomeCubit(DioConsumer(Dio())),
        ),
      ],
      child: const OurChildren(),
    ),
  );
}
