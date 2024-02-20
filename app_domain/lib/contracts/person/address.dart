import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address extends Equatable {
  final int? id;
  final String? street;
  final String? streetName;
  final String? buildingNumber;
  final String? city;
  final String? zipcode;
  final String? country;
  @JsonKey(name: 'county_code')
  final String? countyCode;
  final double? latitude;
  final double? longitude;

  const Address({
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

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  Address copyWith({
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
    return Address(
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

  @override
  List<Object?> get props {
    return [
      id,
      street,
      streetName,
      buildingNumber,
      city,
      zipcode,
      country,
      countyCode,
      latitude,
      longitude,
    ];
  }
}
