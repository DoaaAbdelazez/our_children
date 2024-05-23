import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? id;
  final String? name;
  final String? gender;
  final String? location;
  final String? governorate;
  final String? phone;
  final String? createdBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  const Data({
    this.id,
    this.name,
    this.gender,
    this.location,
    this.governorate,
    this.phone,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Data.fromSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0(
      Map<String, dynamic> json) {
    return Data(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      governorate: json['governorate'] as String?,
      phone: json['phone'] as String?,
      createdBy: json['createdBy'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );
  }

  Map<String, dynamic>
      toSuccessTrueDataId664fadab67464f7458999abcNameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240523T205715388ZUpdatedAt20240523T205715388ZV0() {
    return {
      '_id': id,
      'name': name,
      'gender': gender,
      'location': location,
      'governorate': governorate,
      'phone': phone,
      'createdBy': createdBy,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      '__v': v,
    };
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      gender,
      location,
      governorate,
      phone,
      createdBy,
      createdAt,
      updatedAt,
      v,
    ];
  }
}
