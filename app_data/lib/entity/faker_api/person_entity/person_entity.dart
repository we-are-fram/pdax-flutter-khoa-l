import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'person_entity.g.dart';

@JsonSerializable()
class PersonEntity {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? phone;
  String? birthday;
  String? gender;
  AddressEntity? address;
  String? website;
  String? image;

  PersonEntity({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.birthday,
    this.gender,
    this.address,
    this.website,
    this.image,
  });

  @override
  String toString() {
    return 'PersonEntity(id: $id, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, birthday: $birthday, gender: $gender, address: $address, website: $website, image: $image)';
  }

  factory PersonEntity.fromJson(Map<String, dynamic> json) {
    return _$PersonEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersonEntityToJson(this);

  PersonEntity copyWith({
    int? id,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? birthday,
    String? gender,
    AddressEntity? address,
    String? website,
    String? image,
  }) {
    return PersonEntity(
      id: id ?? this.id,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      address: address ?? this.address,
      website: website ?? this.website,
      image: image ?? this.image,
    );
  }
}
