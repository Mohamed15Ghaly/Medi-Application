import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_on_pressed_cubit.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_sign_up_cubit.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/models/text_felid_form_model.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserOnPressedCubit, UserOnPressedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<UserSignUpCubit>(context).signUpFormKey,
          child: Column(
            children: [
              DefaultTextFelidForm(
                  textFelidFormModel: TextFelidFormModel(
                hintText: "Enter Your User Name",
                labelText: "User Name",
                prefixIcon: Icons.person,
                controller:
                    BlocProvider.of<UserSignUpCubit>(context).signUpUserName,
                textInputType: TextInputType.name,
              )),
              Gap(context.height * .015),
              DefaultTextFelidForm(
                  textFelidFormModel: TextFelidFormModel(
                hintText: "Enter Your Email",
                labelText: "Email",
                prefixIcon: Icons.email,
                controller:
                    BlocProvider.of<UserSignUpCubit>(context).signUpEmail,
                textInputType: TextInputType.emailAddress,
              )),
              Gap(context.height * .015),
              DefaultTextFelidForm(
                  textFelidFormModel: TextFelidFormModel(
                obscureText: BlocProvider.of<UserOnPressedCubit>(context)
                    .signUpObscureTextPassword,
                suffixOnPressed: () {
                  BlocProvider.of<UserOnPressedCubit>(context)
                      .changeSinUpObscureTextPassword();
                },
                hintText: "Enter your Password",
                labelText: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: BlocProvider.of<UserOnPressedCubit>(context)
                        .signUpObscureTextPassword
                    ? Icons.visibility_off
                    : Icons.visibility,
                controller:
                    BlocProvider.of<UserSignUpCubit>(context).signUpPassword,
                textInputType: TextInputType.visiblePassword,
              )),
              Gap(context.height * .015),
              DefaultTextFelidForm(
                  textFelidFormModel: TextFelidFormModel(
                      obscureText: BlocProvider.of<UserOnPressedCubit>(context)
                          .signUpObscureTextConfirmPassword,
                      suffixOnPressed: () {
                        BlocProvider.of<UserOnPressedCubit>(context)
                            .changeSinUpObscureTextConfirmPassword();
                      },
                      hintText: "Enter Your Confirm Password",
                      labelText: "Confirm Password",
                      suffixIcon: BlocProvider.of<UserOnPressedCubit>(context)
                              .signUpObscureTextConfirmPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      textInputType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      controller: BlocProvider.of<UserSignUpCubit>(context)
                          .signUpConfirmPassword)),
            ],
          ),
        );
      },
    );
  }
}
