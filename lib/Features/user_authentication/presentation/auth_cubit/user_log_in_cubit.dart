import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/user_authentication/data/models/login_model.dart';
import 'package:team/Features/user_authentication/data/repository/user_repository.dart';
part 'user_log_in_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit({
    required this.userRepository,
  }) : super(UserLoginInitial());

  final UserRepository userRepository;
  final DataConnectionChecker networkConnectionChecker =
      DataConnectionChecker();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController loginPassword = TextEditingController();
  TextEditingController loginEmail = TextEditingController();

  LogInModel? userLogIn;

  loginValidation() async {
    if (await networkConnectionChecker.hasConnection == false) {
      emit(const UserLoginFailure(error: "No Internet Connection"));
    } else if (loginFormKey.currentState!.validate()) {
      logIn();
    } else if (loginEmail.text.isEmpty && loginPassword.text.isEmpty) {
      emit(const UserLoginFailure(error: "Please Enter Email and Password"));
    } else {
      emit(UserLoginFailure(
          error:
              "Please Enter ${loginEmail.text.trim().isEmpty ? 'Email' : 'Password'}"));
    }
  }

  userLogInInitial() {
    emit(UserLoginInitial());
  }

  logIn() async {
    emit(UserLoginLoading());
    final response = await userRepository.logIn(
        loginEmail: loginEmail.text.trim(),
        loginPassword: loginPassword.text.trim());
    response.fold((l) => emit(UserLoginFailure(error: l)), (r) {
      userLogIn = r;
      emit(UserLoginSuccess());
    });
  }
}
