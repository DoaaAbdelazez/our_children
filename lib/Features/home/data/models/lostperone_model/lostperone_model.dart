import 'package:equatable/equatable.dart';

import 'results.dart';

class LostperoneModel extends Equatable {
  final bool? success;
  final Results? results;

  const LostperoneModel({this.success, this.results});

  factory LostperoneModel.fromJson(Map<String, dynamic> json) {
    return LostperoneModel(
      success: json['success'] as bool?,
      results: json['results'] == null
          ? null
          : Results.fromJson(json['results'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'results': results?.toJson(),
      };

  @override
  List<Object?> get props => [success, results];
}
