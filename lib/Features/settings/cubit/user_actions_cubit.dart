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
      emit(UserActionsSuccess());
    } on ServiceExceptions catch (e) {
      emit(UserActionsFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }



  userDeleteValidation(
      {required String userId, required BuildContext context}) async {
    emit(UserActionsLoading());
    try {
      await apiConsumer.delete("users/$userId");
      emit(UserActionsSuccess());
    } on ServiceExceptions catch (e) {
      emit(UserActionsFailure(error: e.errorMessageModel.errorMessage));
    }
  }

  @override
  Future<void> close() {
    newUserName.dispose();
    return super.close();
  }
}
