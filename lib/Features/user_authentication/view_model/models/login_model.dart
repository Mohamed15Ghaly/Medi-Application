import 'package:team/core/api/api_key.dart';

class LogInModel {
  final String id;
  String name;
  final String email;
  final String token;
  // final String photo;

  LogInModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    // required this.photo,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) {
    return LogInModel(
      id: json[ApiKey.id],
      name: json[ApiKey.name.toLowerCase()],
      email: json[ApiKey.email],
      token: json[ApiKey.token],
      // photo: json['photo'],
    );
  }
}
