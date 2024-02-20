import 'package:app_domain/enums/exception_code.dart';

class BusinessException {
  final String message;
  final BusinessExceptionCode statusCode;
  final Object? originalException;
  BusinessException({
    required this.message,
    required this.statusCode,
    this.originalException,
  });
}
