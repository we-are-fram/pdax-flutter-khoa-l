import 'package:app_domain/contracts/user/get_all_request.dart';
import 'package:app_domain/contracts/user/get_user_detail_request.dart';
import 'package:app_domain/contracts/user/user.dart';
import 'package:app_domain/repositories/user_data_service.dart';
import 'package:injectable/injectable.dart';

import '../entity/faker_api/user_entity.dart';
import '../networking/service_manager.dart';

@Injectable(
  as: UserDataService,
)
class UserDataServiceImpl implements UserDataService {
  final ServiceManager _serviceManager;

  UserDataServiceImpl(this._serviceManager);
  @override
  Future<GetAllUserResponse> getAll(GetAllUserRequest request) async {
    final response = await _serviceManager.getAllUser(
      pageSize: request.pageSize,
      pageNumber: request.pageNumber,
    );
    return GetAllUserResponse(
      users: _map(response.data ?? []),
      pageNumber: request.pageNumber,
      pageSize: request.pageSize,
      totalCount: response.total ?? 0,
    );
  }

  @override
  Future<GetUserDetailResponse> getUserDetail(GetUserDetailRequest request) {
    // TODO: implement getUserDetail
    throw UnimplementedError();
  }

  List<User> _map(List<UserEntity> data) {
    return data
        .map((e) => User(
              id: e.id,
              email: e.email,
              firstname: e.firstname,
              lastname: e.lastname,
              image: e.image,
              uuid: e.uuid,
              username: e.username,
              password: e.password,
              website: e.website,
              macAddress: e.macAddress,
              ip: e.ip,
            ))
        .toList();
  }
}
