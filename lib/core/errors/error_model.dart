import 'package:our_children/core/database/api/end_points.dart';

class ErrorModel {
  final int success;
  final String errorMessage;

  ErrorModel({required this.success, required this.errorMessage, required stack});
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      success: jsonData[ApiKey.success],
      errorMessage: jsonData[ApiKey.errorMessage],
      stack: jsonData[ApiKey.stack],
    );
  }
}
