import 'package:app_domain/contracts/user/get_user_detail_request.dart';

import '../repositories/user_data_service.dart';
import 'base_uc.dart';

class GetUserDetailUC
    extends BaseUseCase<GetUserDetailResponse, GetUserDetailRequest> {
  final UserDataService repository;

  GetUserDetailUC(this.repository);

  @override
  Future<GetUserDetailResponse> onExecute(GetUserDetailRequest params) {
    return repository.getUserDetail(params);
  }
}
