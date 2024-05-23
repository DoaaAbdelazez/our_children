import 'package:our_children/core/database/api/end_points.dart';

class ErrorModel {
  final String message;

  ErrorModel({
    required this.message,
  });
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      message: jsonData[ApiKey.message],
    );
  }
}
