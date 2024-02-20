import 'package:app_domain/contracts/person/get_all_people_request.dart';

import '../contracts/person/get_all_people_response.dart';

abstract class PeopleDataService {
  Future<GetAllPeopleResponse> getAll(GetAllPeopleRequest request);
}
