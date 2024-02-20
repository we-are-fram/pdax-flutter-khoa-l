import 'package:app_data/app_data.dart';
import 'package:auto_route/auto_route.dart';
import 'package:faker_fram/features/users/cubit/users_cubit.dart';
import 'package:faker_fram/features/users/users_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UsersListModule extends StatelessWidget {
  const UsersListModule({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersCubit usersCubit = getIt<UsersCubit>();

    return BlocProvider(
      create: (context) => usersCubit,
      child: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          return const UsersListScreen();
        },
      ),
    );
  }
}
