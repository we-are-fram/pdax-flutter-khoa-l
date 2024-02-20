// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntityResponse _$UserEntityResponseFromJson(Map<String, dynamic> json) =>
    UserEntityResponse(
      status: json['status'] as String?,
      code: json['code'] as int?,
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserEntityResponseToJson(UserEntityResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'total': instance.total,
      'data': instance.data,
    };
