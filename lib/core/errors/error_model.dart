import 'package:our_children/core/database/api/end_points.dart';

class ErrorModel{
  final int status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      status: jsonData[ApiKey.status],
      errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
