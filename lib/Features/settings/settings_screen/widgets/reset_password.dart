import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/Features/user_authentication/presentation/views/forget_password_screen.dart';
import 'package:team/models/text_felid_form_model.dart';

import '../../../../components/response_font_size.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({
    super.key,
  });

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController oldPassword = TextEditingController(),
      newPassword = TextEditingController(),
      confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const FittedBox(fit: BoxFit.scaleDown,child: DefaultText(txt:"Update Password", color: Colors.black,)),
      leading: const FittedBox(child: Icon(Icons.settings)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(MediAssets.resetPassword),
        FittedBox(
          child: Text(
            "Reset your password for enhanced security.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: GetResponseFontSize(context: context, fontsize: 22), fontWeight: FontWeight.bold),
          ),
        ),
        const Gap(15),
        DefaultTextFelidForm(
            textFelidFormModel: TextFelidFormModel(
          hintText: "Enter Your Old Password",
          labelText: "Old Password",
          prefixIcon: Icons.lock,
          controller: oldPassword,
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
          hintText: "Enter Your New Password",
          labelText: "New Password",
          prefixIcon: Icons.lock,
          controller: newPassword,
          textInputType: TextInputType.visiblePassword,
          suffixIcon: Icons.visibility,
        )),
        const Gap(15),
        DefaultTextFelidForm(
            textFelidFormModel: TextFelidFormModel(
          hintText: "Enter Your Confirm New Password",
          labelText: "Confirm New Password",
          prefixIcon: Icons.lock,
          controller: confirmPassword,
          textInputType: TextInputType.visiblePassword,
          suffixIcon: Icons.visibility,
        )),
        const Gap(15),
        CustomButton(title: "Change Password", onPressed: () {}),
      ],
    );
  }
}
