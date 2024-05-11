import 'package:equatable/equatable.dart';

class SigninModel extends Equatable {
  final bool? success;
  final String? results;

  const SigninModel({this.success, this.results});

  factory SigninModel.fromJson(Map<String, dynamic> json) => SigninModel(
        success: json['success'] as bool?,
        results: json['results'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'results': results,
      };

  @override
  List<Object?> get props => [success, results];
}
