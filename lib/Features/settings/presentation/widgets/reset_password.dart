import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/presentation/widgets/reset_password_form.dart';
import 'package:team/Features/settings/view_model/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_image.dart';

import '../../../../components/response_font_size.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({
    super.key,
  });

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: DefaultText(
            txt: "Reset Password",
            color: Colors.black,
          )),
      leading: const FittedBox(child: Icon(Icons.settings)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(MediImage.resetPassword),
        FittedBox(
          child: Text(
            "Reset your password for enhanced security.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: GetResponseFontSize(context: context, fontsize: 22),
                fontWeight: FontWeight.bold),
          ),
        ),
        const Gap(15),
        const ResetPasswordForm(),
        const Gap(15),
        CustomButton(
            title: "Change Password",
            onPressed: () {
              BlocProvider.of<UserActionsCubit>(context)
                  .resetPasswordValidation(
                userId: BlocProvider.of<UserLoginCubit>(context).userLogIn!.id,
                token:
                    BlocProvider.of<UserLoginCubit>(context).userLogIn!.token,
              );
            }),
      ],
    );
  }
}
