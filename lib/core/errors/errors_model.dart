import 'package:team/core/api/api_key.dart';

class ErrorModel {
  final String errorMessage;
  ErrorModel({required this.errorMessage});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      // errorMessage: json[ApiKey.errorMessage],
      errorMessage: json[ApiKey.errorMessage],
    );
  }
}
