import 'package:app_domain/repositories/people_data_service.dart';

import '../contracts/person/get_all_people_request.dart';
import '../contracts/person/get_all_people_response.dart';
import 'base_uc.dart';

class GetAllPeopleUC
    extends BaseUseCase<GetAllPeopleResponse, GetAllPeopleRequest> {
  final PeopleDataService repository;

  GetAllPeopleUC(this.repository);

  @override
  Future<GetAllPeopleResponse> onExecute(GetAllPeopleRequest params) {
    return repository.getAll(params);
  }
}
