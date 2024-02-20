// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleEntityResponse _$PeopleEntityResponseFromJson(
        Map<String, dynamic> json) =>
    PeopleEntityResponse(
      status: json['status'] as String?,
      code: json['code'] as int?,
      total: json['total'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PersonEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PeopleEntityResponseToJson(
        PeopleEntityResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'total': instance.total,
      'data': instance.data,
    };
