import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class HeartDiseasesDoctor extends StatelessWidget {
  const HeartDiseasesDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  MediImage.diseasesDoctor),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "When to see a doctor :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Gap(10),
                  Text(
                    "If you 've any symptoms of a heart attack, contact your health care provider. The earlier the condition is diagnosed, the sooner treatment can begin., contact your health care provider. The earlier the condition is diagnosed, the sooner treatment can begin.",
                    style: TextStyle(),
                  ),
                  Gap(10),
                  Text(
                    "If you've already been diagnosed with heart attack. After you receive your diagnosis, you'll need close medical follow-up until may prescribe drugs to protect and improve your heart health.",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}