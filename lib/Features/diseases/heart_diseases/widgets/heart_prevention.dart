import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class HeartDiseasesPrevention extends StatelessWidget {
  const HeartDiseasesPrevention({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prevention",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                        "It's never too late to take steps to prevent a heart attack — even if you've already had one. Here are ways to prevent a heart attack:")
                  ],
                )),
            const Gap(10),
            Expanded(
              child: Image.asset(
                  MediImage.diseasesPrevention),
            ),
          ],
        ),
        const Gap(10),
        const Text(
            "Follow a healthy lifestyle. Don't smoke. Maintain a healthy weight with a heart-healthy diet. Get regular exercise and manage stress."),
        const Gap(10),
        const Text(
            "Manage other health conditions. Certain conditions, such as high blood pressure and diabetes, can increase the risk of heart attacks. Ask your health care provider how often you need checkups"),
        const Gap(10),
        const Text(
            "Take medications as directed. Your health care provider may prescribe drugs to protect and improve your heart health."),
        const Gap(10),
      ],
    );
  }
}