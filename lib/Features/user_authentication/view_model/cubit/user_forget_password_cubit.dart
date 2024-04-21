import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

part 'user_forget_password_state.dart';

class UserForgetPasswordCubit extends Cubit<UserForgetPasswordState> {
  UserForgetPasswordCubit(this.apiConsumer)
      : super(UserForgetPasswordInitial());
  final ApiConsumer apiConsumer;
  final forgetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController forgetPasswordEmail = TextEditingController();
  forgetPasswordValidation() {
    if (forgetPasswordFormKey.currentState!.validate()) {
      forgetPassword();
    } else {
      emit(const UserForgetPasswordFailure(error: "Please Enter Email"));
    }
  }

  @override
  Future<void> close() {
    forgetPasswordEmail.dispose();
    return super.close();
  }

  userForgetPasswordInitial() {
    emit(UserForgetPasswordInitial());
  }

  forgetPassword() async {
    emit(UserForgetPasswordLoading());
    try {
      await apiConsumer.post(ApiUrl.userForgetPassword,
          body: {ApiKey.email: "mohamedghaly07@gmail.com"});
      forgetPasswordEmail.clear();
      emit(UserForgetPasswordSuccess());
    } on ServiceExceptions catch (e) {
      emit(UserForgetPasswordFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }
}
