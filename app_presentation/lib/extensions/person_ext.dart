import 'package:app_domain/contracts/person/person.dart';

extension UserExt on Person {
  String get fullName => '$firstname $lastname';
}
