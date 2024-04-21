part of 'user_actions_cubit.dart';

sealed class UserActionsState extends Equatable {
  const UserActionsState();

  @override
  List<Object> get props => [];
}

final class UserActionsInitial extends UserActionsState {}
final class UserActionsLoading extends UserActionsState {}
final class UserActionsLoadingSave extends UserActionsState {}

final class UserDeleteAccountSuccess extends UserActionsState {
  final String message;
  const UserDeleteAccountSuccess({required this.message});
}
final class UserDeleteAccountLoading extends UserActionsState {
  final String message;
  const UserDeleteAccountLoading({required this.message});
}
final class UserActionsSuccess extends UserActionsState {
  final String message;
  const UserActionsSuccess({required this.message});
}

final class UserActionsFailure extends UserActionsState {
  final String error;
  const UserActionsFailure({required this.error});
}
