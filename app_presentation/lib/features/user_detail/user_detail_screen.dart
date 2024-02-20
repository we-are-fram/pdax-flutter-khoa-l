import 'package:app_domain/contracts/person/person.dart';
import 'package:faker_fram/extensions/person_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../shared/widgets/network_avatar.dart';
import '../../shared/widgets/row_table.dart';

class UserDetailScreen extends StatefulWidget {
  final Person person;
  const UserDetailScreen({super.key, required this.person});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final person = widget.person;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NetworkAvatar(
            src: person.image ?? '',
            size: 64.sp,
          ),
          const Gap(20),
          RowTable(
            title: 'Id',
            value: "${person.id ?? ''}",
          ),
          RowTable(
            title: 'Name',
            value: person.fullName,
          ),
          RowTable(
            title: 'DOB',
            value: person.birthday ?? '',
          ),
          RowTable(
            title: 'Gender',
            value: person.gender ?? '',
          ),
          RowTable(
            title: 'Email',
            value: person.email ?? '',
          ),
          RowTable(
            title: 'Website',
            value: person.website ?? '',
          ),
          RowTable(
            title: 'Address',
            value: person.address?.street ?? '',
          ),
          // RowTable(
          //   title: 'Mac Address',
          //   value: user.macAddress ?? '',
          // ),
          // const RowTable(
          //   title: 'Password',
          //   value: '********',
          // ),
        ],
      )),
    );
  }
}
