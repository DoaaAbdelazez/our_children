import 'package:equatable/equatable.dart';
import 'package:our_children/core/database/api/end_points.dart';

class SigninModel extends Equatable {
  final bool success;
  final String results;

  const SigninModel({required this.success, required this.results});

  factory SigninModel.fromJson(Map<String, dynamic> json) => SigninModel(
        success: json[ApiKey.success] as bool,
        results: json[ApiKey.message] as String,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'results': results,
      };

  @override
  List<Object?> get props => [success, results];
}
