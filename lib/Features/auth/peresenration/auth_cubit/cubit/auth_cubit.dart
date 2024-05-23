import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:our_children/Features/auth/data/models/signin_model.dart';
import 'package:our_children/Features/auth/data/models/signup_model.dart';
import 'package:our_children/Features/auth/peresenration/auth_cubit/cubit/auth_state.dart';
import 'package:our_children/core/database/api/api_consumer.dart';
import 'package:our_children/core/database/api/end_points.dart';
import 'package:our_children/core/database/cache/cache_helper.dart';
import 'package:our_children/core/errors/exceptions.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.api) : super(AuthInitialState());
  final ApiConsumer api;
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

  SigninModel? auth;
  signIn() async {
    try {
      emit(SignInLoadingState());
      final response = await api.post(
        EndPoint.ourChildrenSignIn,
        data: {
          ApiKey.email: signInEmailController.text,
          ApiKey.password: signInPasswordController.text
        },
      );
      auth = SigninModel.fromJson(response);
      final decodeToken = JwtDecoder.decode(auth!.results);
      CacheHelper().saveData(key: ApiKey.results, value: auth!.results);
      CacheHelper().saveData(key: ApiKey.id, value: decodeToken[ApiKey.id]);
      emit(SignInSucessState());
    } on ServerException catch (e) {
      emit(SignInErrorState(errMessage: e.errorModel.message));
    }
  }

  signUp() async {
    try {
      emit(SignUpLoadingState());
      final resopnse = await api.post(
        EndPoint.ourChildrenRegister,
        data: {
          ApiKey.userName: signUpNameController.text,
          ApiKey.email: signUpEmailController.text,
          ApiKey.password: signUpPasswordController.text,
          ApiKey.confirmPassword: signUpConfPasswordController.text,
        },
      );
      final signUpModel = SignupModel.fromJson(resopnse);
      emit(SignUpSucessState(success: signUpModel.message!));
    } on ServerException catch (e) {
      emit(SignUpErrorState(message: e.errorModel.message));
    }
  }
}
