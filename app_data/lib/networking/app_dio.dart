import 'package:app_data/networking/interceptors/network_interceptor.dart';

import 'package:app_domain/repositories/log_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'interceptors/error_interceptor.dart';

class AppDio extends DioForNative {
  final LogService logger;
  AppDio(
    this.logger, {
    required String baseUrl,
  }) {
    interceptors.addAll([
      NetworkInterceptor(Connectivity()),
      ErrorInterceptor(),
    ]);
    options = BaseOptions(baseUrl: baseUrl);
  }
}
