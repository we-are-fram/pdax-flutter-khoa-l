import 'package:app_data/entity/faker_api/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UserEntityResponse {
  final String? status;
  final int? code;
  final int? total;
  final List<UserEntity>? data;

  UserEntityResponse({
    this.status,
    this.code,
    this.total,
    this.data,
  });

  factory UserEntityResponse.fromJson(Map<String, dynamic> json) =>
      _$UserEntityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityResponseToJson(this);

  @override
  String toString() =>
      'UserEntityResponse(status: $status, code: $code, total: $total, data: $data)';

  UserEntityResponse copyWith({
    String? status,
    int? code,
    int? total,
    List<UserEntity>? data,
  }) {
    return UserEntityResponse(
      status: status ?? this.status,
      code: code ?? this.code,
      total: total ?? this.total,
      data: data ?? this.data,
    );
  }
}
