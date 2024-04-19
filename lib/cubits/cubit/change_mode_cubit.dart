import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'change_mode_state.dart';

class ChangeModeCubit extends Cubit<ChangeModeState> {
  ChangeModeCubit() : super(ChangeModeInitial());
  bool isDarkMode = false;
  changeMode(bool mode) {
    isDarkMode = !mode;
    Get.changeTheme(isDarkMode
        ? ThemeData.dark(
            useMaterial3: false,
           
          )
        : ThemeData.light(useMaterial3: false).copyWith());
    emit(ChangeModeSucceed());
  }
}
