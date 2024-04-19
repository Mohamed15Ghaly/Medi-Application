part of 'index_screen_cubit.dart';

@immutable
sealed class IndexScreenState {}

final class IndexScreenInitial extends IndexScreenState {}

final class IndexScreenIncrement extends IndexScreenState {}
