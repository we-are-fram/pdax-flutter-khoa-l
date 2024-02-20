import 'package:app_domain/contracts/user/user.dart';

extension UserExt on User {
  String get fullName => '$firstname $lastname';
}
