import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/user_authentication/presentation/widgets/signUp_form.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_sign_up_cubit.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/utils/medi_assets.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({
    super.key,
  });

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserSignUpCubit, UserSignUpState>(
      listener: (context, state) {
        if (state is UserSignUpSuccess) {
          defaultActionResult(context: context, resultWidget: const Verified());
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
        return Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  height: MediaQuery.sizeOf(context).height / 2.5,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                  MediAssets.signInImage,
                ),
                Gap(MediaQuery.sizeOf(context).height * .05),
                Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: GetResponseFontSize(context: context, fontsize: 30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Let’s Create Account Together",
                  style: TextStyle(
                    fontSize: GetResponseFontSize(context: context, fontsize: 16),
                  ),
                ),
                Gap(MediaQuery.sizeOf(context).height * .05),
                const SignUpForm(),
                FittedBox(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const DefaultText(
                        txt: 'I agree to the all statement in terms of service. ',
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Gap(MediaQuery.sizeOf(context).height * .05),
                state is UserSignUpLoading
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        title: "Sign Up",
                        onPressed: () {
                          BlocProvider.of<UserSignUpCubit>(context)
                              .signUpValidation();
                        }),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const DefaultText(
                        txt: "ALREADY HAVE AN ACCOUNT?",
                        color: Colors.grey,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Sign In"))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
