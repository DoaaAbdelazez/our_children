import 'package:equatable/equatable.dart';

class Results extends Equatable {
  final String? name;
  final String? gender;
  final String? location;
  final String? governorate;
  final String? phone;
  final String? createdBy;
  final String? imageUrl;
  final String? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  const Results({
    this.name,
    this.gender,
    this.location,
    this.governorate,
    this.phone,
    this.createdBy,
    this.imageUrl,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        name: json['name'] as String?,
        gender: json['gender'] as String?,
        location: json['location'] as String?,
        governorate: json['governorate'] as String?,
        phone: json['phone'] as String?,
        createdBy: json['createdBy'] as String?,
        imageUrl: json['imageUrl'] as String?,
        id: json['_id'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        v: json['__v'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'gender': gender,
        'location': location,
        'governorate': governorate,
        'phone': phone,
        'createdBy': createdBy,
        'imageUrl': imageUrl,
        '_id': id,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        '__v': v,
      };

  @override
  List<Object?> get props {
    return [
      name,
      gender,
      location,
      governorate,
      phone,
      createdBy,
      imageUrl,
      id,
      createdAt,
      updatedAt,
      v,
    ];
  }
}
