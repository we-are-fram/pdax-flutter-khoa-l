import 'package:json_annotation/json_annotation.dart';

import 'person.dart';

part 'get_all_people_request.g.dart';

@JsonSerializable()
class GetAllPeopleRequest {
  int pageSize;
  int pageNumber;
  String? searchText;

  GetAllPeopleRequest({
    required this.pageSize,
    required this.pageNumber,
    this.searchText,
  });
  factory GetAllPeopleRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllPeopleRequestFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllPeopleRequestToJson(this);
}

@JsonSerializable()
class GetAllUserResponse {
  int totalCount;
  int pageSize;
  int pageNumber;
  List<Person> users;

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
