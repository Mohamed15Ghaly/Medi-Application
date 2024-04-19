part of 'recorder_cubit.dart';

@immutable
sealed class RecorderState {}

final class RecorderInitial extends RecorderState {}
final class RecorderSuccess extends RecorderState {}
final class RecorderError extends RecorderState {}
