// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_data/app_data.dart' as _i10;
import 'package:app_data/networking/service_manager.dart' as _i5;
import 'package:app_data/repositories/log_service_impl.dart' as _i4;
import 'package:app_data/repositories/people_data_service_impl.dart' as _i9;
import 'package:app_data/repositories/user_data_service_impl.dart' as _i7;
import 'package:app_domain/repositories/log_service.dart' as _i3;
import 'package:app_domain/repositories/people_data_service.dart' as _i8;
import 'package:app_domain/repositories/user_data_service.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModules = _$DataModules();
    gh.singleton<_i3.LogService>(_i4.LogServiceImpl());
    gh.singleton<_i5.ServiceManager>(
        dataModules.getServiceManager(gh<_i3.LogService>()));
    gh.factory<_i6.UserDataService>(
        () => _i7.UserDataServiceImpl(gh<_i5.ServiceManager>()));
    gh.factory<_i8.PeopleDataService>(
        () => _i9.PeopleDataServiceImpl(gh<_i5.ServiceManager>()));
    return this;
  }
}

class _$DataModules extends _i10.DataModules {}
