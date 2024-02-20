enum BusinessExceptionCode {
  unexpected,
  unauthorized,
  timeOut,
  networkError;

  String get value {
    switch (this) {
      case BusinessExceptionCode.unauthorized:
        return 'unauthorized';
      case BusinessExceptionCode.timeOut:
        return 'timeOut';
      case BusinessExceptionCode.unexpected:
        return 'unexpected';
      case BusinessExceptionCode.networkError:
        return 'networkError';
    }
  }
}
