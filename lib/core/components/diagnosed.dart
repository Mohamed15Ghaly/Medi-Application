import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class Diagnosed extends StatelessWidget {
  const Diagnosed({
    super.key,
    required this.response,
  });
  final String response;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MediImage.diagnosed,
        ),
        Text(response,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getResponseFontSize(context: context, fontSize: 16),
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        const Align(
          alignment: Alignment.center,
          child: Text(
            "You should visit your doctor and take care of yourself.",
            style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
          ),
        ),
        const Divider(),
        CustomButton(
            title: "Ok",
            onPressed: () {
              Get.back();
            }),
      ],
    );
  }
}
