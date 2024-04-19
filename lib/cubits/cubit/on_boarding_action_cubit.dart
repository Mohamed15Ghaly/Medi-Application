import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/utils/medi_share.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
part 'on_boarding_action_state.dart';

class OnBoardingActionCubit extends Cubit<OnBoardingActionState> {
  OnBoardingActionCubit() : super(OnBoardingActionInitial());
  String onBoardingButtonText = "Next";
  onBoardingActionValue(int index) {
    if (index == 5) {
      onBoardingButtonText = "Get Started";
    } else {
      onBoardingButtonText = "Next";
    }
    emit(OnBoardingActionIncrease());
  }

  onBoardingActionIncrease(PageController? pageController) {
    if (pageController?.page == 5) {
      CacheHelper().saveData(key: MediShare.appViewOnBoarding, value: true);

      Get.offAll(() => const LoginScreen());
    } else {
      pageController?.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }
}
