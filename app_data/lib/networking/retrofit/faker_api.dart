import 'package:app_data/entity/faker_api/people_response/people_response.dart';

import 'package:app_data/entity/faker_api/users_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'faker_api.g.dart';

@RestApi(baseUrl: "https://fakerapi.it/api/v1/")
abstract class FakerApi {
  factory FakerApi(Dio dio, {String baseUrl}) = _FakerApi;

  @GET("users")
  Future<UserEntityResponse> getUsers(
    @Query('_quantity') int quantity, {
    @Query('_gender') String? gender,
  });

  @GET("persons")
  Future<PeopleEntityResponse> getPeople(
    @Query('_quantity') int quantity, {
    @Query('_gender') String? gender,
    @Query("_birthday_start") String? birthdayStart,
  });
}
