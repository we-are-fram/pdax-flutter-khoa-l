import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? uuid;
  String? firstname;
  String? lastname;
  String? username;
  String? password;
  String? email;
  String? ip;
  String? macAddress;
  String? website;
  String? image;

  User({
    this.id,
    this.uuid,
    this.firstname,
    this.lastname,
    this.username,
    this.password,
    this.email,
    this.ip,
    this.macAddress,
    this.website,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
