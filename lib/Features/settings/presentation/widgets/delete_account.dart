import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/settings/presentation/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_log_in_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: DefaultText(
            txt: "Delete Account",
            color: MediColors.thirdColor,
          )),
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: const FittedBox(child: Icon(Icons.settings)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(height: context.height / 3, MediImage.deleteAccount),
        Text(
          "Warning : you'll lose all information if you delete your account , "
          "Are you sure you want to delete your account Ready to say goodbye ?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: MediColors.primaryColor,
              fontSize: getResponseFontSize(context: context, fontSize: 14)),
        ),
                      Gap(context.height * .005),

        CustomButton(
            title: "Delete Account",
            onPressed: () {
              BlocProvider.of<UserActionsCubit>(context).userDeleteAccount(
                  userId:
                      BlocProvider.of<UserLoginCubit>(context).userLogIn!.id);
            }),
      ],
    );
  }
}
