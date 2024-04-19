part of 'is_selected_cubit.dart';

@immutable
sealed class IsSelectedState {}

final class IsSelectedInitial extends IsSelectedState {}
final class IsSelectedSuccess extends IsSelectedState {}
