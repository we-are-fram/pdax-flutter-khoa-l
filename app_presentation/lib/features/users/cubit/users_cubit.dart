import 'package:app_domain/contracts/person/get_all_people_request.dart';
import 'package:app_domain/contracts/person/person.dart';

import 'package:app_domain/usecases/get_all_people_uc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'users_state.dart';

@injectable
class UsersCubit extends Cubit<UsersState> {
  final GetAllPeopleUC getAllPeopleUC;
  UsersCubit(this.getAllPeopleUC) : super(UsersInitial());

  Future<List<Person>> getUsers(int pageKey, {required int size}) async {
    final data = await getAllPeopleUC.execute(GetAllPeopleRequest(
      pageNumber: pageKey,
      pageSize: size,
    ));
    return data.people;
  }
}
