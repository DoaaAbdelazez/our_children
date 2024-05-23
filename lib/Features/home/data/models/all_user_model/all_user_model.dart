import 'package:equatable/equatable.dart';

class AllUserModel extends Equatable {
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

  const AllUserModel({
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

  factory AllUserModel.fromId664b877d3693a20034f41a98NameMoGenderMaleLocationGovernorateZagazigPhone010163134012CreatedBy664b84413693a20034f41a8dCreatedAt20240520T172517995ZUpdatedAt20240520T172517995ZV0Id664bdde4ab3e404ee9268e55NameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664b81d7798c7ee58e0420d9CreatedAt20240520T233356480ZUpdatedAt20240520T233356480ZV0Id664e2d74d91f8caa816205b1NameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240522T173756772ZUpdatedAt20240522T173756772ZV0(
      Map<String, dynamic> json) {
    return AllUserModel(
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
      toId664b877d3693a20034f41a98NameMoGenderMaleLocationGovernorateZagazigPhone010163134012CreatedBy664b84413693a20034f41a8dCreatedAt20240520T172517995ZUpdatedAt20240520T172517995ZV0Id664bdde4ab3e404ee9268e55NameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664b81d7798c7ee58e0420d9CreatedAt20240520T233356480ZUpdatedAt20240520T233356480ZV0Id664e2d74d91f8caa816205b1NameSssGenderMaleLocationSadsaGovernorateSadsaPhone12321421CreatedBy664d241dba52a73572a72dcdCreatedAt20240522T173756772ZUpdatedAt20240522T173756772ZV0() {
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
