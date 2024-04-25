import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';

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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check, color: MediColors.fourthColor, size: 16),
            Gap(context.height * .005),
            const Text(
              "Your health is fine now , I'm glad to tell you that .",
              textAlign: TextAlign.center,
              style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
            ),
          ],
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
