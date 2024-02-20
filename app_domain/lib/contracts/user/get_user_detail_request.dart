import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
part 'get_user_detail_request.g.dart';

@JsonSerializable()
class GetUserDetailRequest {
  String? userId;

  GetUserDetailRequest({
    this.userId,
  });

  factory GetUserDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$GetUserDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserDetailRequestToJson(this);
}

@JsonSerializable()
class GetUserDetailResponse {
  User? user;

  GetUserDetailResponse({
    this.user,
  });

  factory GetUserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserDetailResponseToJson(this);
}
