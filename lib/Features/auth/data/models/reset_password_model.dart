import 'package:equatable/equatable.dart';

class ResetPasswordModel extends Equatable {
  final bool? success;
  final String? message;

  const ResetPasswordModel({this.success, this.message});

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    return ResetPasswordModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
      };

  @override
  List<Object?> get props => [success, message];
}
