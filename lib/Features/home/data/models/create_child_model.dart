import 'package:equatable/equatable.dart';
import 'package:our_children/core/database/api/end_points.dart';

class CreateChildModel extends Equatable {
  final bool? success;
  final String? id;

  const CreateChildModel({this.success, this.id});

  factory CreateChildModel.fromSuccessTrueId664e2d74d91f8caa816205b1(
      Map<String, dynamic> json) {
    return CreateChildModel(
      success: json[ApiKey.success] as bool?,
      id: json[ApiKey.id] as String?,
    );
  }

  Map<String, dynamic> toSuccessTrueId664e2d74d91f8caa816205b1() => {
        'success': success,
        'id': id,
      };

  @override
  List<Object?> get props => [success, id];
}
