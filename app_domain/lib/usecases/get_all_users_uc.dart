import 'package:app_domain/contracts/user/get_all_request.dart';
import 'package:app_domain/repositories/user_data_service.dart';

import 'base_uc.dart';

class GetAllUsersUC extends BaseUseCase<GetAllUserResponse, GetAllUserRequest> {
  final UserDataService repository;

  GetAllUsersUC(this.repository);

  @override
  Future<GetAllUserResponse> onExecute(GetAllUserRequest params) {
    return repository.getAll(params);
  }
}
