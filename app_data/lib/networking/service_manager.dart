import 'package:app_data/entity/faker_api/users_response.dart';
import 'package:app_data/networking/app_dio.dart';
import 'package:app_data/networking/retrofit/faker_api.dart';
import 'package:app_domain/repositories/log_service.dart';

import '../entity/faker_api/people_response/people_response.dart';

class ServiceManager {
  static ServiceManager? _singleton;

  late LogService loggerService;
  late FakerApi fakerApi;

  ServiceManager._internal();

  factory ServiceManager({
    required LogService loggerService,
    required String apiUrl,
  }) {
    if (_singleton != null) {
      return _singleton!;
    }
    _singleton = ServiceManager._internal();

    _singleton!.loggerService = loggerService;

    _singleton!.fakerApi = FakerApi(
      AppDio(
        loggerService,
        baseUrl: apiUrl,
      ),
    );

    return _singleton!;
  }

  // TODO: add pagination later
  UserEntityResponse? _cachedData;
  final int _maxSize = 100;
  Future<UserEntityResponse> getAllUser({
    required int pageSize,
    required int pageNumber,
  }) async {
    UserEntityResponse? data;
    if (_cachedData != null) {
      data = _cachedData;
    } else {
      data = await fakerApi.getUsers(
        _maxSize,
      );
      _cachedData = data;
    }
    var users = data!.data ?? [];

    // Pagination Logic
    int startIndex = (pageNumber) * pageSize;
    int endIndex = startIndex + pageSize;
    endIndex = endIndex > users.length
        ? users.length
        : endIndex; // Prevent out-of-bounds
    if (startIndex > users.length) {
      return data.copyWith(data: []);
    }

    var paginatedUsers = users.sublist(startIndex, endIndex);

    // Construct a 'paginated' response
    return data.copyWith(data: paginatedUsers);
  }

  // TODO: add pagination later
  PeopleEntityResponse? _cachedPersonData;
  Future<PeopleEntityResponse> getAllPeople({
    required int pageSize,
    required int pageNumber,
  }) async {
    PeopleEntityResponse? data;
    if (_cachedPersonData != null) {
      data = _cachedPersonData;
    } else {
      data = await fakerApi.getPeople(
        _maxSize,
      );
      _cachedPersonData = data;
    }
    var people = data!.data ?? [];

    // Pagination Logic
    int startIndex = (pageNumber) * pageSize;
    int endIndex = startIndex + pageSize;
    endIndex = endIndex > people.length
        ? people.length
        : endIndex; // Prevent out-of-bounds
    if (startIndex > people.length) {
      return data.copyWith(data: []);
    }

    var paginatedPeople = people.sublist(startIndex, endIndex);

    // Construct a 'paginated' response
    return data.copyWith(data: paginatedPeople);
  }
}
