import 'dart:io';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team/Features/app_menu/data/repository/user_actions_repository.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/cache/cache_helper.dart';
part 'user_actions_state.dart';

class UserActionsCubit extends Cubit<UserActionsState> {
  UserActionsCubit({required this.userActionsRepository})
      : super(UserActionsInitial());
  final DataConnectionChecker networkConnectionChecker =
      DataConnectionChecker();

  final UserActionsRepository userActionsRepository;
  final resetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController newUserName = TextEditingController();
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();
  TextEditingController rateUs = TextEditingController();
  XFile? profilePhoto;
  File? pickedFile;

  setInitialState() {
    profilePhoto = null;
    emit(UserActionsInitial());
  }

  uploadProfilePic() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        pickedFile = File(value.path);
        profilePhoto = XFile(pickedFile!.path);
        emit(UserActionsLoadingSave());
      }
    });
  }

  saveProfilePhoto() async {
    emit(UserActionsLoading());
    final result = await networkConnectionChecker.hasConnection;
    if (!result) {
      emit(const UserActionsFailure(error: "No Internet Connection"));
      return;
    } else {
      final response = await userActionsRepository.saveProfilePhoto(
          profilePhoto: profilePhoto!);
      response.fold(
          (l) => emit(UserActionsFailure(error: l)),
          (r) => emit(const UserActionsSuccess(
                message: "Profile Photo Changed Successfully",
              )));
    }
  }

  changeUserNameValidation() async {
    if (await networkConnectionChecker.hasConnection == false) {
      emit(const UserActionsFailure(error: "No Internet Connection"));
    } else if (newUserName.text.trim().isEmpty) {
      emit(const UserActionsFailure(error: "Please Enter New User Name"));
    } else {
      userChangeUserName();
    }
  }

  userChangeUserName() async {
    emit(UserActionsLoading());
    final response = await userActionsRepository.userChangeUserName(
        newUserName: newUserName.text.trim());
    response.fold((l) => emit(UserActionsFailure(error: l)), (r) {
      CacheHelper().put(key: ApiKey.name, value: newUserName.text.trim());
      newUserName.clear();
      emit(const UserActionsSuccess(
        message: "User Name Changed Successfully",
      ));
    });
  }

  userDeleteAccount() async {
    emit(const UserDeleteAccountLoading(
      message: "Are you sure you want to delete your account ?",
    ));
  }

  userAcceptedDelete() async {
    if (await networkConnectionChecker.hasConnection == false) {
      emit(const UserActionsFailure(error: "No Internet Connection"));
    } else {
      final response = await userActionsRepository.userAcceptedDelete();
      response.fold((l) => emit(UserActionsFailure(error: l)), (r) {
        emit(const UserDeleteAccountSuccess(
          message: "User Deleted Successfully",
        ));
      });
    }
  }

  resetPasswordValidation() async {
    if (await networkConnectionChecker.hasConnection == false) {
      emit(const UserActionsFailure(error: "No Internet Connection"));
    } else if (newPassword.text.trim() != confirmNewPassword.text.trim()) {
      emit(const UserActionsFailure(
          error: "Passwords Don't Match With Confirm Password"));
    } else if (resetPasswordFormKey.currentState!.validate()) {
      resetPassword();
    } else {
      emit(const UserActionsFailure(error: "Please Enter Your Passwords"));
    }
  }

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

  resetPassword() async {
    emit(UserActionsLoading());
    final response = await userActionsRepository.resetPassword(
        newPassword: newPassword.text.trim(),
        confirmNewPassword: confirmNewPassword.text.trim());
    response.fold((l) => emit(UserActionsFailure(error: l)), (r) {
      emit(const UserActionsSuccess(
        message: "Password Changed Successfully",
      ));
    });
  }
}
