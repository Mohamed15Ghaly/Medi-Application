import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_log_in_cubit.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';
import 'package:team/core/functions/upload_image_to_api.dart';
part 'user_actions_state.dart';
class UserActionsCubit extends Cubit<UserActionsState> {
  UserActionsCubit(this.apiConsumer) : super(UserActionsInitial());
  final ApiConsumer apiConsumer;

  XFile? profilePhoto;
  File? pickedFile;

  uploadProfilePic() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        profilePhoto = XFile(pickedFile!.path);
        emit(UserActionsLoadingSave());
      }
    });
  }

  saveProfilePhoto(BuildContext context) async {
    emit(UserActionsLoading());
    try {
      await apiConsumer.post(
        ApiUrl.userUpdatePhoto +
            BlocProvider.of<UserLoginCubit>(context).userLogIn!.id,
        isFormData: true,
        body: {
          ApiKey.image: await uploadImageToApi(profilePhoto!),
        },
      );
      emit(const UserActionsSuccess(
        message: "Profile Photo Changed Successfully",
      ));
    } on ServiceExceptions catch (e) {
      emit(UserActionsFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }

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
      await apiConsumer.put(ApiUrl.userUpdate + userId,
          body: {ApiKey.name: newUserName.text.trim()});
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
    emit(const UserDeleteAccountLoading(
      message: "Are you sure you want to delete your account ?",
    ));
  }

  userAcceptedDelete({required String userId}) async {
    try {
      await apiConsumer.delete(ApiUrl.deleteAccount + userId);
      emit(const UserDeleteAccountSuccess(
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

  resetPasswordValidation({required String userId, required String token}) {
    if (newPassword.text.trim() != confirmNewPassword.text.trim()) {
      emit(const UserActionsFailure(
          error: "Passwords Don't Match With Confirm Password"));
    } else if (resetPasswordFormKey.currentState!.validate()) {
      resetPassword(userId, token);
    } else {
      emit(const UserActionsFailure(error: "Please Enter Your Passwords"));
    }
  }

  setInitialState() {
    emit(UserActionsInitial());
  }

  resetPassword(String userId, String token) async {
    emit(UserActionsLoading());
    try {
      await apiConsumer.post("${ApiUrl.resetPassword}$userId/$token", body: {
        ApiKey.password: newPassword.text.trim(),
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
      rateUs.clear();
      emit(const UserActionsSuccess(
        message: "Thank You For Your Opinion",
      ));
    }
  }
}
