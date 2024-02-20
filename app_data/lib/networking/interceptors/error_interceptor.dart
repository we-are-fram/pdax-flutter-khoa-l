import 'package:app_domain/enums/exception_code.dart';
import 'package:app_domain/exceptions/business_exception.dart';
import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  // final ErrorMapperHandler mapper;
  ErrorInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    BusinessException businessException;
    switch (err.type) {
      case DioExceptionType.cancel:
        businessException = BusinessException(
          originalException: err,
          statusCode: BusinessExceptionCode.unexpected,
          message: BusinessExceptionCode.unexpected.value,
        );
        break;
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        businessException = BusinessException(
          originalException: err,
          statusCode: BusinessExceptionCode.timeOut,
          message: BusinessExceptionCode.timeOut.value,
        );
        break;

      case DioExceptionType.unknown:
      default:
        businessException = _handleAPIException(err);
        break;
    }
    if (businessException.statusCode == BusinessExceptionCode.unauthorized) {
      // TODO: fire unauthorized event
    }
    return handler.next(APIError(
      requestOptions: err.requestOptions,
      error: businessException,
    ));
  }

  BusinessException _handleAPIException(DioException err) {
    //TODO: exp here
    return BusinessException(
      message: 'Unknown error',
      statusCode: BusinessExceptionCode.unexpected,
      originalException: err,
    );
  }
}

class APIError extends DioException {
  APIError(
      {required RequestOptions requestOptions,
      required BusinessException error})
      : super(requestOptions: requestOptions, error: error);
}
