import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:team/core/api/dio_consumer.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: Dio())); 
}
