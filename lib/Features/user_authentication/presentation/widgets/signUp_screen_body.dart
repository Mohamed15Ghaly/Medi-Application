import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/user_authentication/presentation/widgets/signUp_form.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';
import '../auth_cubit/user_on_pressed_cubit.dart';
import '../auth_cubit/user_sign_up_cubit.dart';

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
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              MediImage.signInImage,
            ),
            Gap(context.height * .05),
            FittedBox(
              child: SizedBox(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            FittedBox(
              child: SizedBox(
                child: Text(
                  "Let’s Create Account Together",
                  style: TextStyle(
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 16),
                  ),
                ),
              ),
            ),
            Gap(context.height * .05),
            const SignUpForm(),
            Gap(context.height * .005),
            FittedBox(
              child: Row(
                children: [
                  BlocConsumer<UserOnPressedCubit, UserOnPressedState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Checkbox(
                          value: BlocProvider.of<UserOnPressedCubit>(context)
                              .userAcceptPrivacy,
                          onChanged: (value) {
                            BlocProvider.of<UserOnPressedCubit>(context)
                                .changeAcceptPrivacy();
                          });
                    },
                  ),
                  const DefaultText(
                      txt:
                          'I agree to the all statement in terms of privacy policy',
                      color: Colors.black),
                ],
              ),
            ),
            Gap(context.height * .025),
            CustomButton(
                title: "Sign Up",
                onPressed: () {
                  BlocProvider.of<UserSignUpCubit>(context).signUpValidation(
                      userAcceptPrivacy:
                          BlocProvider.of<UserOnPressedCubit>(context)
                              .userAcceptPrivacy);
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
  }
}
