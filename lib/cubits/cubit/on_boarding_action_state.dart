part of 'on_boarding_action_cubit.dart';

@immutable
sealed class OnBoardingActionState {}

final class OnBoardingActionInitial extends OnBoardingActionState {}
final class OnBoardingActionIncrease extends OnBoardingActionState {}
final class OnBoardingActionSuccess extends OnBoardingActionState {}
