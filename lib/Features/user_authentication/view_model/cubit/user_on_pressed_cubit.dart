import 'package:bloc/bloc.dart';

part 'user_on_pressed_state.dart';

class UserOnPressedCubit extends Cubit<UserOnPressedState> {
  UserOnPressedCubit() : super(UserOnPressedInitial());
  bool loginObscureText = true;
  bool signUpObscureTextPassword = true;
  bool signUpObscureTextConfirmPassword = true;
  bool userAcceptPrivacy = false;
  bool newPassword = false;
  bool confirmNewPassword = false;

  void changeAcceptPrivacy() {
    userAcceptPrivacy = !userAcceptPrivacy;
    emit(UserOnPressedSuccess());
  }

  void changeSinUpObscureTextPassword() {
    signUpObscureTextPassword = !signUpObscureTextPassword;
    emit(UserOnPressedSuccess());
  }

  void changeSinUpObscureTextConfirmPassword() {
    signUpObscureTextConfirmPassword = !signUpObscureTextConfirmPassword;
    emit(UserOnPressedSuccess());
  }

  void changeLoginObscureText() {
    loginObscureText = !loginObscureText;
    emit(UserOnPressedSuccess());
  }

  void changeResetPasswordObscureText() {
    newPassword = !newPassword;
    emit(UserOnPressedSuccess());
  }

  void changeResetConfirmPasswordObscureText() {
    confirmNewPassword = !confirmNewPassword;
    emit(UserOnPressedSuccess());
  }
}
