import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'person.g.dart';

@JsonSerializable()
class Person extends Equatable {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? phone;
  final String? birthday;
  final String? gender;
  final Address? address;
  final String? website;
  final String? image;

  const Person({
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

  factory Person.fromJson(Map<String, dynamic> json) {
    return _$PersonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  Person copyWith({
    int? id,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? birthday,
    String? gender,
    Address? address,
    String? website,
    String? image,
  }) {
    return Person(
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

  @override
  List<Object?> get props {
    return [
      id,
      firstname,
      lastname,
      email,
      phone,
      birthday,
      gender,
      address,
      website,
      image,
    ];
  }
}
