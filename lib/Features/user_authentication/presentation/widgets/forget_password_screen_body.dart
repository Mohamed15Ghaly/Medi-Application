import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/models/text_felid_form_model.dart';

class ForgetPasswordScreenBody extends StatefulWidget {
  const ForgetPasswordScreenBody({
    super.key,
  });

  @override
  State<ForgetPasswordScreenBody> createState() =>
      _ForgetPasswordScreenBodyState();
}

class _ForgetPasswordScreenBodyState extends State<ForgetPasswordScreenBody> {
  TextEditingController forgetPasswordEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              height:context.height/2.5,
              width:context.width,
              fit: BoxFit.cover,
              MediImage.forgetPasswordImage,
            ),
            const Gap(25),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: GetResponseFontSize(context: context, fontsize: 30),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(5),
            Text(
              "Please Enter Your Email Address To Reset Your Password",
              style: TextStyle(
                fontSize: GetResponseFontSize(context: context, fontsize: 16),
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(25),
            DefaultTextFelidForm(
              
                textFelidFormModel: TextFelidFormModel(
              hintText: "Enter Your Email",
              labelText: "Email",
              prefixIcon: Icons.email,
              controller: forgetPasswordEmail,
              textInputType: TextInputType.emailAddress,
            )),
            const Gap(25),
            CustomButton(title: "Send", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
