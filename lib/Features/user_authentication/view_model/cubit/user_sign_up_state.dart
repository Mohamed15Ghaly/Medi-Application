part of 'user_sign_up_cubit.dart';

abstract class UserSignUpState extends Equatable {
  const UserSignUpState();

  @override
  List<Object> get props => [];
}

final class UserSignUpInitial extends UserSignUpState {}

final class UserSignUpLoading extends UserSignUpState {}

final class UserSignUpSuccess extends UserSignUpState {}

final class UserSignUpFailure extends UserSignUpState {
  final String error;
  const UserSignUpFailure({required this.error});
}

