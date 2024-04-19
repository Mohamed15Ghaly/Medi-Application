part of 'change_mode_cubit.dart';

@immutable
sealed class ChangeModeState {}

final class ChangeModeInitial extends ChangeModeState {}
final class ChangeModeSucceed extends ChangeModeState {}

