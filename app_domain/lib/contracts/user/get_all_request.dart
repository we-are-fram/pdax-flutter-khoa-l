import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'get_all_request.g.dart';

@JsonSerializable()
class GetAllUserRequest {
  int pageSize;
  int pageNumber;
  String? searchText;

  GetAllUserRequest({
    required this.pageSize,
    required this.pageNumber,
    this.searchText,
  });
  factory GetAllUserRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserRequestFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllUserRequestToJson(this);
}

@JsonSerializable()
class GetAllUserResponse {
  int totalCount;
  int pageSize;
  int pageNumber;
  List<User> users;

  GetAllUserResponse({
    required this.totalCount,
    required this.pageSize,
    required this.pageNumber,
    this.users = const [],
  });

  factory GetAllUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllUserResponseToJson(this);
}
