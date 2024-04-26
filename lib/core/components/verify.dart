import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class Verified extends StatelessWidget {
  const Verified({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1, title2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(child: Image.asset(height: context.height/3.2,MediImage.signInVerifyImage)),
        FittedBox(
          child: AutoSizeText(title1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getResponseFontSize(context: context, fontSize: 18),
                fontWeight: FontWeight.bold,
              )),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: FittedBox(child: Icon(Icons.email, color: MediColors.fourthColor, size: 16))),
            Gap(context.height * .005),
            Flexible(
              child: Text(
                title2,
                textAlign: TextAlign.center,
                style:
                TextStyle(color: MediColors.fourthColor, fontSize: getResponseFontSize(context: context, fontSize: 8)),
              ),
            ),
          ],
        ),
        const Divider(),
        FittedBox(
          child: CustomButton(
              title: "Ok",
              onPressed: () {
                Get.back();
              }),
        ),
      ],
    );
  }
}