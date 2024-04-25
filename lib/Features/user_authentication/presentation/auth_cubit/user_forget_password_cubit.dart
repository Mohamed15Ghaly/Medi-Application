import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/user_authentication/data/repository/user_repository.dart';
part 'user_forget_password_state.dart';

class UserForgetPasswordCubit extends Cubit<UserForgetPasswordState> {
  UserForgetPasswordCubit(this.userRepository)
      : super(UserForgetPasswordInitial());

  final UserRepository userRepository;
  final DataConnectionChecker networkConnectionChecker =
      DataConnectionChecker();
  final forgetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController forgetPasswordEmail = TextEditingController();

  forgetPasswordValidation() async {
    if (await networkConnectionChecker.hasConnection == false) {
      emit(const UserForgetPasswordFailure(error: "No Internet Connection"));
    }
    else if (forgetPasswordFormKey.currentState!.validate()) {
      forgetPassword();
    } else {
      emit(const UserForgetPasswordFailure(error: "Please Enter Email"));
    }
  }

  userForgetPasswordInitial() {
    emit(UserForgetPasswordInitial());
  }

  forgetPassword() async {
    emit(UserForgetPasswordLoading());
    final response = await userRepository.forgetPassword(
        forgetPasswordEmail: forgetPasswordEmail.text);
    response.fold((error) => emit(UserForgetPasswordFailure(error: error)),
        (r) => emit(UserForgetPasswordSuccess()));
  }
}
