import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class NotDiagnosed extends StatelessWidget {
  const NotDiagnosed({
    super.key,
    required this.response,
  });
  final String response;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(child: Image.asset(height: context.height/3.2,MediImage.notDiagnosed)),
        FittedBox(
          child: Text(response,
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
            const Flexible(child: FittedBox(child: Icon(Icons.check, color: MediColors.fourthColor, size: 16))),
            Gap(context.height * .005),
            const Flexible(
              child: Text(
                "Your health is fine now , I'm glad to tell you that .",
                textAlign: TextAlign.center,
                style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
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
