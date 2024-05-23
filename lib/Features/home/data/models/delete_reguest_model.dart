import 'package:equatable/equatable.dart';
import 'package:our_children/core/database/api/end_points.dart';

class DeleteReguestModel extends Equatable {
  final bool? success;
  final String? message;

  const DeleteReguestModel({this.success, this.message});

  factory DeleteReguestModel.fromSuccessTrueMessageFoundPersonDeletedSuccessfully(
      Map<String, dynamic> json) {
    return DeleteReguestModel(
      success: json[ApiKey.success] as bool?,
      message: json[ApiKey.message] as String?,
    );
  }

  Map<String, dynamic> toSuccessTrueMessageFoundPersonDeletedSuccessfully() {
    return {
      'success': success,
      'message': message,
    };
  }

  @override
  List<Object?> get props => [success, message];
}
