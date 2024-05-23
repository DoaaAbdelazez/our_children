import 'package:equatable/equatable.dart';
import 'package:our_children/core/database/api/end_points.dart';

import 'data.dart';

class HomeRequestModel extends Equatable {
  final bool? success;
  final Data? data;

  const HomeRequestModel({this.success, this.data});

  factory HomeRequestModel.fromSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0(
      Map<String, dynamic> json) {
    return HomeRequestModel(
      success: json[ApiKey.success] as bool?,
      data: json['data'] == null
          ? null
          : Data
              .fromSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0(
                  json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic>
      toSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0() {
    return {
      'success': success,
      'data': data
          ?.toSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0(),
    };
  }

  @override
  List<Object?> get props => [success, data];
}
