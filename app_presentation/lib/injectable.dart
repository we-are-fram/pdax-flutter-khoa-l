import 'dart:async';
import 'package:app_domain/repositories/people_data_service.dart';
import 'package:app_domain/repositories/user_data_service.dart';
import 'package:app_domain/usecases/get_all_people_uc.dart';
import 'package:app_domain/usecases/get_all_users_uc.dart';
import 'package:get_it/get_it.dart' show GetIt;
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default  / default/ default
)
FutureOr<GetIt> configureDependencies() => init(getIt);

Future<void> configureUseCaseDependencies() async {
  getIt.registerFactory<GetAllUsersUC>(
      () => GetAllUsersUC(getIt<UserDataService>()));

  getIt.registerFactory<GetAllPeopleUC>(
      () => GetAllPeopleUC(getIt<PeopleDataService>()));
}
