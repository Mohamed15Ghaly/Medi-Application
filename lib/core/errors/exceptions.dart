import 'package:dio/dio.dart';
import 'package:team/core/errors/errors_model.dart';

class ServiceExceptions implements Exception {
  final ErrorModel errorMessageModel;
  ServiceExceptions({required this.errorMessageModel});
}

void handelDioException(DioException e) {
  var model = (ErrorModel.fromJson(e.response!.data));
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.receiveTimeout:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.sendTimeout:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.badCertificate:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.cancel:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.connectionError:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.unknown:
      throw ServiceExceptions(errorMessageModel: model);
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ServiceExceptions(errorMessageModel: model);
        case 401:
          throw ServiceExceptions(errorMessageModel: model);
        case 403:
          throw ServiceExceptions(errorMessageModel: model);
        case 404:
          throw ServiceExceptions(errorMessageModel: model);
        case 500:
          throw ServiceExceptions(errorMessageModel: model);
        default:
          throw ServiceExceptions(errorMessageModel: model);
      }
    default:
      throw ServiceExceptions(errorMessageModel: model);
  }
}
