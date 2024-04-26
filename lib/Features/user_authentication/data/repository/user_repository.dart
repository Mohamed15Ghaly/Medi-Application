import 'package:dartz/dartz.dart';
import 'package:team/Features/user_authentication/data/models/login_model.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/errors/exceptions.dart';

abstract class BaseUserRepository {
  Future<Either<String, LogInModel>> logIn({
    required String loginEmail,
    required String loginPassword,
  });
  Future<Either<String, void>> signUp({
    required String signUpEmail,
    required String signUpUserName,
    required String signUpPassword,
    required String signUpConfirmPassword,
  });

  Future<Either<String, void>> forgetPassword({
    required String forgetPasswordEmail,
  });
}

class UserRepository extends BaseUserRepository {
  final ApiConsumer apiConsumer;

  UserRepository({required this.apiConsumer});
  @override
  Future<Either<String, LogInModel>> logIn({
    required String loginEmail,
    required String loginPassword,
  }) async {
    try {
      final response = await apiConsumer.post(ApiUrl.userLogIn, body: {
        ApiKey.email: loginEmail,
        ApiKey.password: loginPassword,
      });
      final userLogIn = LogInModel.fromJson(response);
      CacheHelper().saveData(key: ApiKey.token, value: userLogIn.token);
      CacheHelper()
          .saveData(key: ApiKey.profilePhoto, value: userLogIn.profilePhoto);
      CacheHelper().saveData(key: ApiKey.id, value: userLogIn.id);
      CacheHelper().saveData(key: ApiKey.name, value: userLogIn.name);
      CacheHelper().saveData(key: ApiKey.email, value: userLogIn.email);
      return Right(userLogIn);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  @override
  Future<Either<String, void>> signUp({
    required String signUpUserName,
    required String signUpEmail,
    required String signUpPassword,
    required String signUpConfirmPassword,
  }) async {
    try {
      await apiConsumer.post(ApiUrl.userSignUp, body: {
        ApiKey.name: signUpUserName,
        ApiKey.email: signUpEmail,
        ApiKey.password: signUpPassword,
        ApiKey.confirmPassword: signUpConfirmPassword,
      });
      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }

  @override
  Future<Either<String, void>> forgetPassword(
      {required String forgetPasswordEmail}) async {
    try {
      await apiConsumer.post(ApiUrl.userForgetPassword,
          body: {ApiKey.email: forgetPasswordEmail});
      return const Right(null);
    } on ServiceExceptions catch (e) {
      return Left(e.errorMessageModel.errorMessage);
    }
  }
}
