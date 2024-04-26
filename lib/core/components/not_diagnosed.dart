import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        Image.asset(MediImage.notDiagnosed),
        Text(response,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getResponseFontSize(context: context, fontSize: 18),
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "Your health is fine now , I'm glad to tell you that .",
            textAlign: TextAlign.center,
            style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
          ),
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
