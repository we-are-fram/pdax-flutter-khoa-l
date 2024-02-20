import 'package:app_domain/contracts/person/person.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_people_response.g.dart';

@JsonSerializable()
class GetAllPeopleResponse {
  int totalCount;
  int pageSize;
  int pageNumber;
  List<Person> people;

  GetAllPeopleResponse({
    required this.totalCount,
    required this.pageSize,
    required this.pageNumber,
    this.people = const [],
  });

  factory GetAllPeopleResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllPeopleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllPeopleResponseToJson(this);
}
