import 'package:app_domain/contracts/person/person.dart';
import 'package:app_domain/contracts/user/user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../features/home/home_screen.dart';
import '../features/user_detail/user_detail_module.dart';
import '../features/users/users_module.dart';

part 'auto_route_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Module,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: UsersListRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/detail',
      page: UserDetailRoute.page,
    ),
    AutoRoute(
      path: '/home',
      page: HomeRoute.page,
    ),
  ];
}
