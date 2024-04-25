import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:team/Features/splash_onBoarding/data/view_model/onBoarding_view_model.dart';
part 'on_boarding_action_state.dart';

class OnBoardingActionCubit extends Cubit<OnBoardingActionState> {
  OnBoardingActionCubit() : super(OnBoardingActionInitial());
  final PageController pageController = PageController();
  int pageIndex = 0;
  onBoardingActionValue(int index) {
    pageIndex = index;
    if (index == OnBoardingViewModel.onBoardingList.length - 1) {
      pageIndex = index;
      emit(OnBoardingActionLast());
    } else {
      emit(OnBoardingActionIncrease());
    }
  }

  onBoardingActionIncrease() {
    emit(OnBoardingActionIncrease());

    if (pageIndex == OnBoardingViewModel.onBoardingList.length - 1) {
      emit(OnBoardingActionOver());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
  }
}
