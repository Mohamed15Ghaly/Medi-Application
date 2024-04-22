import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/home/presentation/views/main_screen.dart';
import 'package:team/Features/user_authentication/presentation/widgets/login_screen_body.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_log_in_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserLoginCubit, UserLoginState>(
      listener: (context, state) {
        if (state is UserLoginSuccess) {
          Get.offAll(() => const MainScreen());
        }
        if (state is UserLoginFailure) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            title: 'Error',
            desc: state.error,
            btnOkOnPress: () {
              BlocProvider.of<UserLoginCubit>(context).userLogInInitial();
            },
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red,
          ).show();
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is UserLoginLoading,
          progressIndicator: const CircularProgressIndicator(),
          color: MediColors.thirdColor,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Login"),
              centerTitle: true,
            ),
            body: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: LoginScreenBody(),
              ),
            ),
          ),
        );
      },
    );
  }
}
