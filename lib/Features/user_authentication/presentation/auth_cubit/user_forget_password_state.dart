part of 'user_forget_password_cubit.dart';

sealed class UserForgetPasswordState extends Equatable {
  const UserForgetPasswordState();

  @override
  List<Object> get props => [];
}

final class UserForgetPasswordInitial extends UserForgetPasswordState {}
final class UserForgetPasswordLoading extends UserForgetPasswordState {}
final class UserForgetPasswordSuccess extends UserForgetPasswordState {}
final class UserForgetPasswordFailure extends UserForgetPasswordState {
  final String error;
  const UserForgetPasswordFailure({required this.error});
}
