import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team/Features/app_menu/data/models/save_photo_model.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/errors/exceptions.dart';
import 'package:team/core/functions/upload_image_to_api.dart';

class UserActionsRepository {
  final ApiConsumer apiConsumer;
  UserActionsRepository({required this.apiConsumer});

  Future<Either<String, void>> saveProfilePhoto(
      {required XFile profilePhoto}) async {
    try {
      final response = await apiConsumer.post(
        ApiUrl.userUpdatePhoto +
            CacheHelper().getData(key: ApiKey.id).toString(),
        isFormData: true,
        body: {
          ApiKey.image: await uploadImageToApi(profilePhoto),
        },
      );
      SaveProfileModel saveProfileModel = SaveProfileModel.fromJson(response);
      CacheHelper().saveData(
          key: ApiKey.profilePhoto, value: saveProfileModel.profilePhoto);
      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, void>> userChangeUserName(
      {required String newUserName}) async {
    try {
      await apiConsumer.put(
          ApiUrl.userUpdate + CacheHelper().getData(key: ApiKey.id),
          body: {ApiKey.name: newUserName});

      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, void>> userAcceptedDelete() async {
    try {
      await apiConsumer
          .delete(ApiUrl.deleteAccount + CacheHelper().getData(key: ApiKey.id));
      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  Future<Either<String, void>> resetPassword(
      {required String newPassword ,required String oldPassword }) async {
    try {
      await apiConsumer.post(
          ApiUrl.resetPassword +
              CacheHelper().getData(key: ApiKey.id) ,
          body: {
            ApiKey.oldPassword: oldPassword,
            ApiKey.password: newPassword,
            
          });

      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }
}
