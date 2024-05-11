import 'package:equatable/equatable.dart';

class SignupModel extends Equatable {
  final bool? success;
  final String? message;

  const SignupModel({this.success, this.message});

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        success: json['success'] as bool?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
      };

  @override
  List<Object?> get props => [success, message];
}
