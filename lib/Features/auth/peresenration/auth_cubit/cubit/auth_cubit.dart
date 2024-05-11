import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
