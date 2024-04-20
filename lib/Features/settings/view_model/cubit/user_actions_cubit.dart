import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/errors/exceptions.dart';

part 'user_actions_state.dart';

class UserActionsCubit extends Cubit<UserActionsState> {
  UserActionsCubit(this.apiConsumer) : super(UserActionsInitial());
  final ApiConsumer apiConsumer;

  TextEditingController newUserName = TextEditingController();
  changeUserNameValidation(
      {required String userId, required BuildContext context}) {
    if (newUserName.text.trim().isEmpty) {
      emit(const UserActionsFailure(error: "Please Enter New User Name"));
    } else {
      userChangeUserNameValidation(userId, context);
    }
  }

  userChangeUserNameValidation(String userId, BuildContext context) async {
    emit(UserActionsLoading());
    try {
      await apiConsumer
          .put("users/$userId", body: {ApiKey.name: newUserName.text.trim()});
      BlocProvider.of<UserLoginCubit>(context).userLogIn!.name =
          newUserName.text.trim();
      newUserName.clear();
      emit(const UserActionsSuccess(
        message: "User Name Changed Successfully",
      ));
    } on ServiceExceptions catch (e) {
      emit(UserActionsFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }

  userDeleteAccount({required String userId}) async {
    emit(UserActionsLoading());
    userAcceptedDelete(userId: userId);
  }

  userAcceptedDelete({required String userId}) async {
    try {
      await apiConsumer.delete("users/$userId");
      emit(const UserActionsSuccess(
        message: "User Deleted Successfully",
      ));
    } on ServiceExceptions catch (e) {
      emit(UserActionsFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  @override
  Future<void> close() {
    newUserName.dispose();
    return super.close();
  }

  final resetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

  resetPasswordValidation() {
    if (newPassword.text.trim() != confirmNewPassword.text.trim()) {
      emit(const UserActionsFailure(error: "Passwords Don't Match With Confirm Password"));
    } else if (resetPasswordFormKey.currentState!.validate()) {
    } else {
      emit(const UserActionsFailure(error: "Please Enter Your Passwords"));
    }
  }

  resetPassword() async {
    emit(UserActionsLoading());
    try {
      await apiConsumer.put("", body: {
        ApiKey.password: oldPassword.text.trim(),
        ApiKey.newPassword: newPassword.text.trim(),
        ApiKey.confirmPassword: confirmNewPassword.text.trim(),
      });
      emit(const UserActionsSuccess(
        message: "Password Changed Successfully",
      ));
    } on ServiceExceptions catch (e) {
      return emit(UserActionsFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  TextEditingController rateUs = TextEditingController();
  rateUsValidation() {
    if (rateUs.text.trim().isEmpty) {
      emit(const UserActionsFailure(error: "Please Enter Your Opinion"));
    } else {
      emit(const UserActionsSuccess(
        message: "Thank You For Your Opinion",
      ));
    }
  }
}
