// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_detail_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserDetailRequest _$GetUserDetailRequestFromJson(
        Map<String, dynamic> json) =>
    GetUserDetailRequest(
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$GetUserDetailRequestToJson(
        GetUserDetailRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

GetUserDetailResponse _$GetUserDetailResponseFromJson(
        Map<String, dynamic> json) =>
    GetUserDetailResponse(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserDetailResponseToJson(
        GetUserDetailResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
