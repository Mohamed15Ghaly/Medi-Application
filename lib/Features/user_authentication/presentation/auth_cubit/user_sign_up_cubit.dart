import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/user_authentication/data/repository/user_repository.dart';
part 'user_sign_up_state.dart';

class UserSignUpCubit extends Cubit<UserSignUpState> {
  UserSignUpCubit(this.userRepository) : super(UserSignUpInitial());

  final UserRepository userRepository;
  final signUpFormKey = GlobalKey<FormState>();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpConfirmPassword = TextEditingController();
  TextEditingController signUpUserName = TextEditingController();

  userSignUpInitial() {
    emit(UserSignUpInitial());
  }

  signUpValidation({required bool userAcceptPrivacy}) {
    if (signUpPassword.text.trim() != signUpConfirmPassword.text.trim()) {
      emit(const UserSignUpFailure(
          error: "Password Not Matched With Confirm Password"));
    } else if (signUpFormKey.currentState!.validate() == false) {
      emit(const UserSignUpFailure(
          error: "Please Enter fill all fields with valid information"));
    } else if (userAcceptPrivacy == false) {
      emit(const UserSignUpFailure(error: "Please Accept User Privacy Policy"));
    } else if (signUpFormKey.currentState!.validate()) {
      signUp();
    }
  }

  userSignUpDataClear() {
    signUpUserName.clear();
    signUpEmail.clear();
    signUpPassword.clear();
    signUpConfirmPassword.clear();
  }

  signUp() async {
    emit(UserSignUpLoading());
    final response = await userRepository.signUp(
      signUpEmail: signUpEmail.text.trim(),
      signUpPassword: signUpPassword.text.trim(),
      signUpConfirmPassword: signUpConfirmPassword.text.trim(),
      signUpUserName: signUpUserName.text.trim(),
    );
    userSignUpDataClear();
    response.fold((error) => emit(UserSignUpFailure(error: error)),
        (r) => emit(UserSignUpSuccess()));
  }
}
