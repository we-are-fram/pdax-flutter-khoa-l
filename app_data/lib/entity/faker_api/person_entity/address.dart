import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressEntity {
  int? id;
  String? street;
  String? streetName;
  String? buildingNumber;
  String? city;
  String? zipcode;
  String? country;
  @JsonKey(name: 'county_code')
  String? countyCode;
  double? latitude;
  double? longitude;

  AddressEntity({
    this.id,
    this.street,
    this.streetName,
    this.buildingNumber,
    this.city,
    this.zipcode,
    this.country,
    this.countyCode,
    this.latitude,
    this.longitude,
  });

  @override
  String toString() {
    return 'Address(id: $id, street: $street, streetName: $streetName, buildingNumber: $buildingNumber, city: $city, zipcode: $zipcode, country: $country, countyCode: $countyCode, latitude: $latitude, longitude: $longitude)';
  }

  factory AddressEntity.fromJson(Map<String, dynamic> json) {
    return _$AddressEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);

  AddressEntity copyWith({
    int? id,
    String? street,
    String? streetName,
    String? buildingNumber,
    String? city,
    String? zipcode,
    String? country,
    String? countyCode,
    double? latitude,
    double? longitude,
  }) {
    return AddressEntity(
      id: id ?? this.id,
      street: street ?? this.street,
      streetName: streetName ?? this.streetName,
      buildingNumber: buildingNumber ?? this.buildingNumber,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      country: country ?? this.country,
      countyCode: countyCode ?? this.countyCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
