import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_image.dart';
import '../../../../core/utils/response_font_size.dart';
import '../../data/models/text_felid_form_model.dart';
import '../auth_cubit/user_forget_password_cubit.dart';

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
              MediImage.forgetPasswordImage,
            ),
            const Gap(25),
            FittedBox(
              child: SizedBox(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getResponseFontSize(context: context, fontSize: 30),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Gap(5),
            FittedBox(
              child: SizedBox(
                child: Text(
                  "Please Enter Your Email Address To Reset Your Password",
                  style: TextStyle(
                    fontSize: getResponseFontSize(context: context, fontSize: 16),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Gap(25),
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
            const Gap(25),
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
