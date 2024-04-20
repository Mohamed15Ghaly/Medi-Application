part of 'user_log_in_cubit.dart';

sealed class UserLoginState extends Equatable {
  const UserLoginState();

  @override
  List<Object> get props => [];
}

final class UserLoginInitial extends UserLoginState {}
final class UserLoginLoading extends UserLoginState {}
final class UserLoginSuccess extends UserLoginState {}
final class UserLoginFailure extends UserLoginState {
  final String error;
  const UserLoginFailure({required this.error});
}
final class UserObscureText extends UserLoginState {}
final class UserNotObscureText extends UserLoginState {}
