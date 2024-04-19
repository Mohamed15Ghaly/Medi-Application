import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/Features/user_authentication/presentation/views/forget_password_screen.dart';
import 'package:team/Features/home/general_screen/view/general_screen.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/models/text_felid_form_model.dart';
import 'package:team/Features/user_authentication/presentation/views/signUp_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserLoginCubit, UserLoginState>(
      listener: (context, state) {
        if (state is UserLoginSuccess) {
          Get.offAll(() => const GeneralScreen());
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
        return SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                height: MediaQuery.sizeOf(context).height / 2.5,
                width: MediaQuery.sizeOf(context).width,
                MediAssets.loginImage,
                fit: BoxFit.cover,
              ),
              const Gap(25),
              Text(
                "Hello Again!",
                style: TextStyle(
                  fontSize: getResponseFontSize(context: context, fontSize: 30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Welcome Back You’ve Been Missed!",
                style: TextStyle(
                  fontSize: getResponseFontSize(context: context, fontSize: 16),
                ),
              ),
              const Gap(25),
              Form(
                  key: BlocProvider.of<UserLoginCubit>(context).loginFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      DefaultTextFelidForm(
                          textFelidFormModel: TextFelidFormModel(
                              hintText: "Enter Your Email",
                              labelText: "Email",
                              prefixIcon: Icons.email,
                              controller:
                                  BlocProvider.of<UserLoginCubit>(context)
                                      .loginEmail,
                              textInputType: TextInputType.emailAddress)),
                      const Gap(15),
                      DefaultTextFelidForm(
                          textFelidFormModel: TextFelidFormModel(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.visibility,
                        controller: BlocProvider.of<UserLoginCubit>(context)
                            .loginPassword,
                        textInputType: TextInputType.visiblePassword,
                      )),
                    ],
                  )),
              const Gap(5),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const DefaultText(
                    txt: "Forget Password?",
                    color: Colors.blue,
                  ),
                ),
              ),
              state is UserLoginLoading
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      title: "Login",
                      onPressed: () {
                        Get.to(() => const GeneralScreen());
                        // BlocProvider.of<UserAuthenticationCubit>(context)
                        //     .loginValidation();
                      }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: FittedBox(
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Flexible(
                    child: FittedBox(
                      child: TextButton(
                          onPressed: () {
                            Get.to(() => const SignUpScreen());
                          },
                          child: const DefaultText(
                              txt: "Sign up", color: Colors.blue)),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
