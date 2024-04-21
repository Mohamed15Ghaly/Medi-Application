import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/user_authentication/presentation/widgets/forget_password_screen_body.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_forget_password_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';
import 'package:team/core/components/default_prediction_result.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserForgetPasswordCubit(DioConsumer(dio: Dio())),
      child: BlocConsumer<UserForgetPasswordCubit, UserForgetPasswordState>(
        listener: (context, state) {
          if (state is UserForgetPasswordSuccess) {
            defaultActionResult(
                context: context,
                resultWidget: const Verified(
                  title1: "Check your email for Reset Password .",
                  title2:
                      "We have sent an email to your email address for Reset Password.",
                ));
          }
          if (state is UserForgetPasswordFailure) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.scale,
              title: 'Error',
              desc: state.error,
              btnOkOnPress: () {
                BlocProvider.of<UserForgetPasswordCubit>(context)
                    .userForgetPasswordInitial();
              },
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red,
            ).show();
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is UserForgetPasswordLoading,
            progressIndicator: const CircularProgressIndicator(),
            color: Colors.black54,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Forget Password"),
                centerTitle: true,
              ),
              body: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ForgetPasswordScreenBody(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
