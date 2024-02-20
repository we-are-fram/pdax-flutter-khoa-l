import 'package:app_data/entity/faker_api/person_entity/person_entity.dart';
import 'package:app_domain/contracts/person/address.dart';
import 'package:app_domain/contracts/person/get_all_people_request.dart';
import 'package:app_domain/contracts/person/get_all_people_response.dart';
import 'package:app_domain/contracts/person/person.dart';
import 'package:app_domain/repositories/people_data_service.dart';
import 'package:injectable/injectable.dart';

import '../entity/faker_api/person_entity/address.dart';
import '../networking/service_manager.dart';

@Injectable(
  as: PeopleDataService,
)
class PeopleDataServiceImpl implements PeopleDataService {
  final ServiceManager _serviceManager;

  PeopleDataServiceImpl(this._serviceManager);
  @override
  Future<GetAllPeopleResponse> getAll(GetAllPeopleRequest request) async {
    final response = await _serviceManager.getAllPeople(
      pageSize: request.pageSize,
      pageNumber: request.pageNumber,
    );
    return GetAllPeopleResponse(
      people: _map(response.data ?? []),
      pageNumber: request.pageNumber,
      pageSize: request.pageSize,
      totalCount: response.total ?? 0,
    );
  }

  List<Person> _map(List<PersonEntity> data) {
    return data
        .map((e) => Person(
              id: e.id,
              email: e.email,
              firstname: e.firstname,
              lastname: e.lastname,
              image: e.image,
              website: e.website,
              address: e.address != null ? _mapAddress(e.address) : null,
              birthday: e.birthday,
              gender: e.gender,
              phone: e.phone,
            ))
        .toList();
  }

  Address _mapAddress(AddressEntity? address) {
    return Address(
      id: address?.id,
      street: address?.street,
      streetName: address?.streetName,
      buildingNumber: address?.buildingNumber,
      city: address?.city,
      zipcode: address?.zipcode,
      country: address?.country,
      countyCode: address?.countyCode,
      latitude: address?.latitude,
      longitude: address?.longitude,
    );
  }
}
