// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_people_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllPeopleRequest _$GetAllPeopleRequestFromJson(Map<String, dynamic> json) =>
    GetAllPeopleRequest(
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$GetAllPeopleRequestToJson(
        GetAllPeopleRequest instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'searchText': instance.searchText,
    };

GetAllUserResponse _$GetAllUserResponseFromJson(Map<String, dynamic> json) =>
    GetAllUserResponse(
      totalCount: json['totalCount'] as int,
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetAllUserResponseToJson(GetAllUserResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'users': instance.users,
    };
