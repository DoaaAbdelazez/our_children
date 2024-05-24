class AuthState {}

final class AuthInitialState extends AuthState {}

final class ChangeLoginPasswordSuffixIcon extends AuthState {}

final class ChangeSignUpConfPasswordSuffixIcon extends AuthState {}

final class ChangeSignUpPasswordSuffixIcon extends AuthState {}

final class ChangeResetPasswordSuffixIcon extends AuthState {}

final class ChangeResetConfPasswordSuffixIcon extends AuthState {}

final class SignInLoadingState extends AuthState {}

final class SignInSucessState extends AuthState {}

final class SignInErrorState extends AuthState {
  final String errMessage;

  SignInErrorState({required this.errMessage});
}

final class SignUpLoadingState extends AuthState {}

final class SignUpSucessState extends AuthState {
  final String success;

  SignUpSucessState({required this.success});
}

final class SignUpErrorState extends AuthState {
  final String message;

  SignUpErrorState({required this.message});
}

final class ForgetPasswordLoadingState extends AuthState {}

final class ForgetPasswordSucessState extends AuthState {}

final class ForgetPasswordErrorState extends AuthState {
  final String message;

  ForgetPasswordErrorState({required this.message});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSucessState extends AuthState {}

final class ResetPasswordErrorState extends AuthState {
  final String message;

  ResetPasswordErrorState({required this.message});
}
