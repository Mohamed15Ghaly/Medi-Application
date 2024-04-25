import 'package:dio/dio.dart';

Future uploadRecordToApi(String path) async {
  return MultipartFile.fromFile(path, filename: path.split('/').last);
}
