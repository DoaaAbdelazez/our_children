import 'package:go_router/go_router.dart';
import 'package:our_children/Features/splash/presentation/view/splash_view.dart';

import '../../Features/auth/peresenration/views/sign_up_view.dart';

final GoRouter router = GoRouter(routes:[
  GoRoute(path: "/",
  builder: (context, state) =>const SplashView() ,
  ),
  GoRoute(path: "/SignUpView",
  builder: (context, state) =>const SignUpView() ,
  ),
  
]);