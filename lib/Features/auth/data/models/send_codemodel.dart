import 'package:equatable/equatable.dart';

class SendCodemodel extends Equatable {
  final bool? success;
  final String? message;

  const SendCodemodel({this.success, this.message});

  factory SendCodemodel.fromJson(Map<String, dynamic> json) => SendCodemodel(
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
