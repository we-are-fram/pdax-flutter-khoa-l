// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) => PersonEntity(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] == null
          ? null
          : AddressEntity.fromJson(json['address'] as Map<String, dynamic>),
      website: json['website'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$PersonEntityToJson(PersonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'address': instance.address,
      'website': instance.website,
      'image': instance.image,
    };
