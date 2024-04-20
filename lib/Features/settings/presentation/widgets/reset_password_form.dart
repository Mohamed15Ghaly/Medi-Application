import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/settings/view_model/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/presentation/views/forget_password_screen.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_on_pressed_cubit.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserOnPressedCubit, UserOnPressedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
              obscureText:
                  BlocProvider.of<UserOnPressedCubit>(context).oldPassword,
              hintText: "Enter Your Old Password",
              labelText: "Old Password",
              prefixIcon: Icons.lock,
              controller:
                  BlocProvider.of<UserActionsCubit>(context).oldPassword,
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icons.visibility,
            )),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => const ForgetPasswordScreen());
                    },
                    child: const Text("Forget Password?"))),
            DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
              obscureText:
                  BlocProvider.of<UserOnPressedCubit>(context).newPassword,
              hintText: "Enter Your New Password",
              labelText: "New Password",
              prefixIcon: Icons.lock,
              controller:
                  BlocProvider.of<UserActionsCubit>(context).newPassword,
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icons.visibility,
            )),
            const Gap(15),
            DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
              obscureText: BlocProvider.of<UserOnPressedCubit>(context)
                  .confirmNewPassword,
              hintText: "Enter Your Confirm New Password",
              labelText: "Confirm New Password",
              prefixIcon: Icons.lock,
              controller:
                  BlocProvider.of<UserActionsCubit>(context).confirmNewPassword,
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icons.visibility,
            )),
          ],
        ));
      },
    );
  }
}
