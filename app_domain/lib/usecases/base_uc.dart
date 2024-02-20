import '../enums/exception_code.dart';
import '../exceptions/business_exception.dart';

abstract class BaseUseCase<T, Params> {
  Future<T> execute(Params params,
      {Function(dynamic)? onProgressUpdate}) async {
    try {
      await preExecute(params, onProgressUpdate);
      return await onExecute(params);
    } on Error catch (e) {
      if (e is! BusinessException) {
        throw BusinessException(
            statusCode: BusinessExceptionCode.unexpected,
            originalException: e,
            message: 'UNKNOWN');
      }
      rethrow;
    }
  }

  Future<T> onExecute(Params params);

  preExecute(Params params, Function(dynamic)? onProgressUpdate) {}
}
