part of 'user_actions_cubit.dart';

sealed class UserActionsState extends Equatable {
  const UserActionsState();

  @override
  List<Object> get props => [];
}

final class UserActionsInitial extends UserActionsState {}
final class UserActionsLoading extends UserActionsState {}
final class UserActionsSuccess extends UserActionsState {}
final class UserActionsFailure extends UserActionsState {
  final String error;
  const UserActionsFailure({required this.error});
}
