import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/app_menu/presentation/user_actions_cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_on_pressed_cubit.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/Features/user_authentication/data/models/text_felid_form_model.dart';

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
            key:
                BlocProvider.of<UserActionsCubit>(context).resetPasswordFormKey,
            child: Column(
              children: [
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
                  suffixIcon:
                      BlocProvider.of<UserOnPressedCubit>(context).newPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                  suffixOnPressed: () {
                    BlocProvider.of<UserOnPressedCubit>(context)
                        .changeResetPasswordObscureText();
                  },
                )),
                Gap(context.height * .015),
                DefaultTextFelidForm(
                    textFelidFormModel: TextFelidFormModel(
                  obscureText: BlocProvider.of<UserOnPressedCubit>(context)
                      .oldPassword,
                  hintText: "Enter Your Old Password",
                  labelText: "Old Password",
                  prefixIcon: Icons.lock,
                  controller: BlocProvider.of<UserActionsCubit>(context)
                      .oldPassword,
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: BlocProvider.of<UserOnPressedCubit>(context)
                          .oldPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  suffixOnPressed: () {
                    BlocProvider.of<UserOnPressedCubit>(context)
                        .changeResetConfirmPasswordObscureText();
                  },
                )),
              ],
            ));
      },
    );
  }
}
