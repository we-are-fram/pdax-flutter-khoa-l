import 'package:app_domain/contracts/person/person.dart';
import 'package:auto_route/auto_route.dart';
import 'package:faker_fram/features/users/cubit/users_cubit.dart';
import 'package:faker_fram/routes/auto_route_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter/material.dart';

import 'widgets/user_list_item.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({
    super.key,
  });

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  final ScrollController scrollController = ScrollController();
  final PagingController<int, Person> _pagingController =
      PagingController(firstPageKey: 0);
  static const _pageSize = 20;
  UsersCubit get usersCubit => BlocProvider.of<UsersCubit>(context);

  @override
  void initState() {
    super.initState();

    _pagingController.addPageRequestListener((pageKey) async {
      try {
        final newItems = await usersCubit.getUsers(pageKey, size: _pageSize);
        final isLastPage = newItems.length < _pageSize;
        if (isLastPage) {
          _pagingController.appendLastPage(newItems);
        } else {
          final nextPageKey = pageKey + newItems.length;
          _pagingController.appendPage(newItems, nextPageKey);
        }
      } catch (error) {
        _pagingController.error = error;
      }
    });
  }

  _refreshPage() {
    _pagingController.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('People'),
      ),
      body: PrimaryScrollController(
        controller: scrollController,
        child: RefreshIndicator(
          onRefresh: () async {
            _refreshPage();
          },
          child: PagedListView<int, Person>(
            scrollController: scrollController,
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<Person>(
              itemBuilder: (context, item, index) => UserListItem(
                user: item,
                onPress: () {
                  onUserPressed(
                    item,
                  );
                },
              ),
            ),
            // itemExtent: 100.sp,
            cacheExtent: 100.sp,
            padding: EdgeInsets.only(bottom: 50.sp),
          ),
        ),
      ),
    );
  }

  void onUserPressed(
    Person item,
  ) {
    context.router.navigate(UserDetailRoute(person: item));
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
