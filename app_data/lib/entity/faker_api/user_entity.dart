import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  final int? id;
  final String? uuid;
  final String? firstname;
  final String? lastname;
  final String? username;
  final String? password;
  final String? email;
  final String? ip;
  final String? macAddress;
  final String? website;
  final String? image;

  const UserEntity({
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

  @override
  String toString() {
    return 'UserEntity(id: $id, uuid: $uuid, firstname: $firstname, lastname: $lastname, username: $username, password: $password, email: $email, ip: $ip, macAddress: $macAddress, website: $website, image: $image)';
  }

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return _$UserEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  UserEntity copyWith({
    int? id,
    String? uuid,
    String? firstname,
    String? lastname,
    String? username,
    String? password,
    String? email,
    String? ip,
    String? macAddress,
    String? website,
    String? image,
  }) {
    return UserEntity(
      id: id ?? this.id,
      uuid: uuid ?? this.uuid,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      ip: ip ?? this.ip,
      macAddress: macAddress ?? this.macAddress,
      website: website ?? this.website,
      image: image ?? this.image,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! UserEntity) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      uuid.hashCode ^
      firstname.hashCode ^
      lastname.hashCode ^
      username.hashCode ^
      password.hashCode ^
      email.hashCode ^
      ip.hashCode ^
      macAddress.hashCode ^
      website.hashCode ^
      image.hashCode;
}
