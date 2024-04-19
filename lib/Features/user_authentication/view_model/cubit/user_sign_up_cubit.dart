import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

part 'user_sign_up_state.dart';

class UserSignUpCubit extends Cubit<UserSignUpState> {
  UserSignUpCubit(this.apiConsumer) : super(UserSignUpInitial());
  final ApiConsumer apiConsumer;
  final signUpFormKey = GlobalKey<FormState>();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpConfirmPassword = TextEditingController();
  TextEditingController signUpUserName = TextEditingController();

  signUpValidation() {
    if (signUpPassword.text.trim() != signUpConfirmPassword.text.trim()) {
      emit(const UserSignUpFailure(
          error: "Password Not Matched With Confirm Password"));
    } else if (signUpFormKey.currentState!.validate()) {
      signUp();
    } else if (signUpFormKey.currentState!.validate() == false) {
      emit(const UserSignUpFailure(
          error: "Please Enter fill all fields with valid information"));
    }
  }

  @override
  Future<void> close() {
    signUpEmail.dispose();
    signUpPassword.dispose();
    signUpConfirmPassword.dispose();
    signUpUserName.dispose();
    return super.close();
  }

  userSignUpInitial() {
    emit(UserSignUpInitial());
  }
  
  signUp() async {
    emit(UserSignUpLoading());
    try {
      await apiConsumer.post(ApiUrl.userSignUp, body: {
        ApiKey.name: signUpUserName.text.trim(),
        ApiKey.email: signUpEmail.text.trim(),
        ApiKey.password: signUpPassword.text.trim(),
        ApiKey.confirmPassword: signUpConfirmPassword.text.trim(),
      });
      emit(UserSignUpSuccess());
    } on ServiceExceptions catch (e) {
      emit(UserSignUpFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }
}
