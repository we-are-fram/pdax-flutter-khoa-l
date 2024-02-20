import 'package:app_domain/contracts/user/get_all_request.dart';
import 'package:app_domain/contracts/user/get_user_detail_request.dart';

abstract class UserDataService {
  Future<GetAllUserResponse> getAll(GetAllUserRequest request);

  Future<GetUserDetailResponse> getUserDetail(GetUserDetailRequest request);
}
