import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';

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
        Image.asset(MediImage.signInVerifyImage),
        Text(title1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email, color: MediColors.fourthColor, size: 16),
            Gap(context.height * .005),
            Text(
              title2,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: MediColors.fourthColor, fontSize: 8),
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