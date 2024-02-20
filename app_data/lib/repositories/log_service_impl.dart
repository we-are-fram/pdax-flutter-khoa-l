import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:app_domain/repositories/log_service.dart';

@Singleton(as: LogService)
class LogServiceImpl implements LogService {
  late final Logger logger;

  LogServiceImpl() {
    logger = Logger(printer: PrefixPrinter(PrettyPrinter(colors: false)));
  }
  @override
  void error(message, [data, stackTrace]) {
    logger.e(message, error: data, stackTrace: stackTrace);
    if (!kDebugMode) {
      // TODO: add crashlytics here
    }
  }

  @override
  void log(data) {
    logger.t(data);
  }

  @override
  void warn(data) {
    logger.w(data);
  }
}
