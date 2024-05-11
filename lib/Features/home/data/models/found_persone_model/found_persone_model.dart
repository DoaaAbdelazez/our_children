import 'package:equatable/equatable.dart';

class FoundPersoneModel extends Equatable {
  final String? id;
  final String? name;
  final String? gender;
  final String? location;
  final String? phone;
  final String? createdBy;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  const FoundPersoneModel({
    this.id,
    this.name,
    this.gender,
    this.location,
    this.phone,
    this.createdBy,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory FoundPersoneModel.fromJson(Map<String, dynamic> json) {
    return FoundPersoneModel(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      createdBy: json['createdBy'] as String?,
      imageUrl: json['imageUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'gender': gender,
        'location': location,
        'phone': phone,
        'createdBy': createdBy,
        'imageUrl': imageUrl,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '__v': v,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      gender,
      location,
      phone,
      createdBy,
      imageUrl,
      createdAt,
      updatedAt,
      v,
    ];
  }
}