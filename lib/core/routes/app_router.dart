import 'package:go_router/go_router.dart';
import 'package:our_children/Features/splash/presentation/view/splash_view.dart';

import '../../Features/login/views/login_view.dart';

final GoRouter router = GoRouter(routes:[
  GoRoute(path: "/",
  builder: (context, state) =>const SplashView() ,
  ),
  GoRoute(path: "/loginScreen",
  builder: (context, state) =>const LoginScreen() ,
  ),
  
]);