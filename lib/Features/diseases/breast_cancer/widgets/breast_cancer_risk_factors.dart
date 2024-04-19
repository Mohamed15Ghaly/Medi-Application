import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class BreastCancerRiskFactors extends StatelessWidget {
  const BreastCancerRiskFactors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(MediAssets.diseasesRiskFactors),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Risk factors : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Gap(10),
                  Text(
                      "A family history of breast cancer. If a parent, sibling or child had breast cancer, your risk of breast cancer is increased"),
                  Gap(10),
                  Text(
                      "Beginning your period at a younger age. Beginning your period before age 12 increases your risk of breast cancer."),
                  Gap(10),
                  Text(
                      "Beginning menopause at an older age. Beginning menopause after age 55 increases the risk of breast cancer"),
                      Gap(10),
                  Text(
                      "Drinking alcohol. Drinking alcohol increases the risk of breast cancer."),

                       Gap(10),
                  Text(
                      "Radiation exposure. If you received radiation treatments to your chest as a child or young adult, your risk of breast cancer is higher."),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
