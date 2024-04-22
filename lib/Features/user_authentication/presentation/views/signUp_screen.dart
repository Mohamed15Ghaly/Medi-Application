import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/user_authentication/presentation/widgets/signUp_screen_body.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_sign_up_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/utils/medi_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserSignUpCubit(DioConsumer(dio: Dio())),
      child: BlocConsumer<UserSignUpCubit, UserSignUpState>(
        listener: (context, state) {
          if (state is UserSignUpSuccess) {
            defaultActionResult(
                context: context,
                resultWidget: const Verified(
                  title1:
                      "Verify your email address to get access to your account.",
                  title2:
                      "We have sent an email to your email address for verification.",
                ));
          }
          if (state is UserSignUpFailure) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.scale,
              title: 'Error',
              desc: state.error,
              btnOkOnPress: () {
                BlocProvider.of<UserSignUpCubit>(context).userSignUpInitial();
              },
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red,
            ).show();
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is UserSignUpLoading,
            progressIndicator: const CircularProgressIndicator(),
            color: MediColors.thirdColor.withOpacity(.5),
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Sign Up"),
                centerTitle: true,
              ),
              body: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SignUpScreenBody(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
