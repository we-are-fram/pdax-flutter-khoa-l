library app_data;

import 'dart:async';

import 'package:app_domain/repositories/log_service.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'app_data.config.dart';
import 'networking/service_manager.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: r'$initGetIt', // default
)
FutureOr<void> configureDataDependencies() => getIt.$initGetIt();

@module
abstract class DataModules {
  final String _apiUrl = 'https://fakerapi.it/api/v1/';
  @singleton
  ServiceManager getServiceManager(LogService loggerService) =>
      ServiceManager(loggerService: loggerService, apiUrl: _apiUrl);
}
