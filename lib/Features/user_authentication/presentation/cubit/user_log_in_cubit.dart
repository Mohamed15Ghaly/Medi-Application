import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/user_authentication/view_model/models/login_model.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

part 'user_log_in_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(
    this.apiConsumer,
  ) : super(UserLoginInitial());

  final ApiConsumer apiConsumer;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController loginPassword = TextEditingController();
  TextEditingController loginEmail = TextEditingController();

  LogInModel? userLogIn;

  loginValidation() {
    if (loginFormKey.currentState!.validate()) {
      logIn();
    } else if (loginEmail.text.isEmpty && loginPassword.text.isEmpty) {
      emit(const UserLoginFailure(error: "Please Enter Email and Password"));
    } else {
      emit(UserLoginFailure(
          error:
              "Please Enter ${loginEmail.text.isEmpty ? 'Email' : 'Password'}"));
    }
  }

  @override
  Future<void> close() {
    loginEmail.dispose();
    loginPassword.dispose();
    return super.close();
  }

  userLogInInitial() {
    emit(UserLoginInitial());
  }

  logIn() async {
    emit(UserLoginLoading());
    try {
      final response = await apiConsumer.post(ApiUrl.userLogIn, body: {
        ApiKey.email: loginEmail.text.trim(),
        ApiKey.password: loginPassword.text.trim(),
      });
      userLogIn = LogInModel.fromJson(response);
      emit(UserLoginSuccess());
    } on ServiceExceptions catch (e) {
      emit(UserLoginFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }
}
