import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_forget_password_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              height: context.height / 2.5,
              width: context.width,
              fit: BoxFit.cover,
              MediImage.forgetPasswordImage,
            ),
            Gap(context.height * .025),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: getResponseFontSize(context: context, fontSize: 30),
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(context.height * .005),
            Text(
              "Please Enter Your Email Address To Reset Your Password",
              style: TextStyle(
                fontSize: getResponseFontSize(context: context, fontSize: 16),
              ),
              textAlign: TextAlign.center,
            ),
            Gap(context.height * .025),
            Form(
              key:
                  context.read<UserForgetPasswordCubit>().forgetPasswordFormKey,
              child: DefaultTextFelidForm(
                  textFelidFormModel: TextFelidFormModel(
                hintText: "Enter Your Email",
                labelText: "Email",
                prefixIcon: Icons.email,
                controller: BlocProvider.of<UserForgetPasswordCubit>(context)
                    .forgetPasswordEmail,
                textInputType: TextInputType.emailAddress,
              )),
            ),
            Gap(context.height * .025),
            CustomButton(
                title: "Send",
                onPressed: () {
                  BlocProvider.of<UserForgetPasswordCubit>(context)
                      .forgetPasswordValidation();
                }),
          ],
        ),
      ),
    );
  }
}
