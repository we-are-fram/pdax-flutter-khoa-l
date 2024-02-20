enum Gender {
  male,
  female;

  String get name => toString().split('.').last;
}
