import 'package:dio/dio.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_interceptors.dart';
import 'package:team/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    // dio.options = BaseOptions(
    //   baseUrl: EndPoint.baseUrl,
    // );
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true, error: true));
  }
  @override
  Future delete(String url) async {
    try {
      final response = await dio.delete(url);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future get(String url) async {
    try {
      final response = await dio.get(url);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future post(String url,
      {bool isFormData = false, required Map<String, dynamic> body}) async {
    try {
      final response =
          await dio.post(url, data: isFormData ? FormData.fromMap(body) : body);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future put(String url, {required Map<String, dynamic> body}) async {
    try {
      final response = await dio.put(url, data: body);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }
}
