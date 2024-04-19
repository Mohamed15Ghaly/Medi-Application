import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class BreastCancerComplications extends StatelessWidget {
  const BreastCancerComplications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text("Complications : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(
                "The most significant complication is metastatic breast cancer — breast cancer that spreads to other areas of your body, including your brain, bones, liver and lungs. Studies show about 1 in 3 women and people AFAB who have early-stage cancer later develop metastatic breast cancer.")
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(MediAssets.diseasesComplications1),
            ),
            const Gap(10),
            Expanded(
              child: Image.asset(MediAssets.diseasesComplications2),
            ),
          ],
        ),
  
      ],
    );
  }
}
