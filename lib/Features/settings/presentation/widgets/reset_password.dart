import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/presentation/widgets/reset_password_form.dart';
import 'package:team/Features/settings/presentation/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_log_in_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';


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
            color: MediColors.thirdColor,
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
                color: MediColors.thirdColor,
                fontSize: getResponseFontSize(context: context, fontSize: 22),
                fontWeight: FontWeight.bold),
          ),
        ),
                      Gap(context.height * .005),

         ResetPasswordForm(),
                      Gap(context.height * .005),

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
