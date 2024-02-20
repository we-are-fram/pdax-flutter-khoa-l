// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_people_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllPeopleResponse _$GetAllPeopleResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllPeopleResponse(
      totalCount: json['totalCount'] as int,
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      people: (json['people'] as List<dynamic>?)
              ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetAllPeopleResponseToJson(
        GetAllPeopleResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'people': instance.people,
    };
