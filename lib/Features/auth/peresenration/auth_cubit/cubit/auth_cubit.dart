import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> signUpKey = GlobalKey();
  GlobalKey<FormState> resetPasswordKey = GlobalKey();
  GlobalKey<FormState> forgetPasswordKey = GlobalKey();
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPasswordController = TextEditingController();
  TextEditingController signUpNameController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpConfPasswordController = TextEditingController();
  TextEditingController forgetPasswordEmailController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();
  TextEditingController resetConfPasswordController = TextEditingController();
  TextEditingController resetCodeController = TextEditingController();

  bool isLoginPasswordShowing = true;
  bool isSignUpPasswordShowing = true;
  bool isSignUpConfPasswordShowing = true;
  bool isresetPasswordShowing = true;
  bool isresetConfPasswordShowing = true;
  IconData loginsuffixIcon = Icons.visibility;
  IconData passwordsuffixIcon = Icons.visibility;
  IconData confPassowrdsuffixIcon = Icons.visibility;
  IconData resetPasswordsuffixIcon = Icons.visibility;
  IconData resetConfPassowrdsuffixIcon = Icons.visibility;

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

  void changeResetPasswordSuffixIcon() {
    isresetPasswordShowing = !isresetPasswordShowing;
    resetPasswordsuffixIcon =
        isresetPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeResetPasswordSuffixIcon());
  }

  void changeResetConfPasswordSuffixIcon() {
    isresetConfPasswordShowing = !isresetConfPasswordShowing;
    resetConfPassowrdsuffixIcon =
        isresetConfPasswordShowing ? Icons.visibility : Icons.visibility_off;
    emit(ChangeResetConfPasswordSuffixIcon());
  }
}
