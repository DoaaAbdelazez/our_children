import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> signUpKey = GlobalKey();
  GlobalKey<FormState> forgetPasswordKey = GlobalKey();
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPasswordController = TextEditingController();
  TextEditingController signUpNameController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpConfPasswordController = TextEditingController();
  TextEditingController forgetPasswordEmailController = TextEditingController();

  bool isLoginPasswordShowing = true;
  bool isSignUpPasswordShowing = true;
  bool isSignUpConfPasswordShowing = true;
  IconData loginsuffixIcon = Icons.visibility;
  IconData passwordsuffixIcon = Icons.visibility;
  IconData confPassowrdsuffixIcon = Icons.visibility;

  void changeLoginPasswordSuffixIcon() {
    isLoginPasswordShowing = !isLoginPasswordShowing;
    loginsuffixIcon =
        isLoginPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeLoginPasswordSuffixIcon());
  }

  void changeSignUpPasswordSuffixIcon() {
    isSignUpPasswordShowing = !isSignUpPasswordShowing;
    passwordsuffixIcon =
        isSignUpPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeSignUpPasswordSuffixIcon());
  }

  void changeSignUpConfPasswordSuffixIcon() {
    isSignUpConfPasswordShowing = !isSignUpConfPasswordShowing;
    confPassowrdsuffixIcon =
        isSignUpConfPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeSignUpConfPasswordSuffixIcon());
  }
}
