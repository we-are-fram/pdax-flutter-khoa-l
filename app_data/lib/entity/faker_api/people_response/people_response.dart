import 'package:app_data/entity/faker_api/person_entity/person_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'people_response.g.dart';

@JsonSerializable()
class PeopleEntityResponse {
  String? status;
  int? code;
  int? total;
  List<PersonEntity>? data;

  PeopleEntityResponse({this.status, this.code, this.total, this.data});

  @override
  String toString() {
    return 'PeopleResponse(status: $status, code: $code, total: $total, data: $data)';
  }

  factory PeopleEntityResponse.fromJson(Map<String, dynamic> json) {
    return _$PeopleEntityResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PeopleEntityResponseToJson(this);

  PeopleEntityResponse copyWith({
    String? status,
    int? code,
    int? total,
    List<PersonEntity>? data,
  }) {
    return PeopleEntityResponse(
      status: status ?? this.status,
      code: code ?? this.code,
      total: total ?? this.total,
      data: data ?? this.data,
    );
  }
}
