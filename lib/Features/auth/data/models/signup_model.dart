import 'package:equatable/equatable.dart';
import 'package:our_children/core/database/api/end_points.dart';

class SignupModel extends Equatable {
  final bool? success;
  final String? message;

  const SignupModel({this.success, this.message});

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        success: json[ApiKey.success] as bool?,
        message: json[ApiKey.message] as String?,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
      };

  @override
  List<Object?> get props => [success, message];
}
