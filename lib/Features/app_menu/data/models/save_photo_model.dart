import 'package:team/core/api/api_key.dart';

class SaveProfileModel {
  final String profilePhoto;
  SaveProfileModel({required this.profilePhoto});

  factory SaveProfileModel.fromJson(Map<String, dynamic> json) {
    return SaveProfileModel(
      profilePhoto: json[ApiKey.profilePhoto][ApiKey.url],
    );
  }
}
