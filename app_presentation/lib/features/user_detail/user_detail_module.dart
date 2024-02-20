import 'package:app_domain/contracts/person/person.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'user_detail_screen.dart';

@RoutePage()
class UserDetailModule extends StatelessWidget {
  final Person person;
  const UserDetailModule({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return UserDetailScreen(person: person);
  }
}
