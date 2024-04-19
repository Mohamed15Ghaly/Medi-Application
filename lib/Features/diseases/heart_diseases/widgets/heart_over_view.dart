import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class HeartDiseasesOverView extends StatelessWidget {
  const HeartDiseasesOverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(MediAssets.diseasesOverview),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overview : ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Gap(10),
                  Text(
                      "A heart attack occurs when the flow of blood to the heart is severely reduced or blocked "),
                  Gap(10),
                  Text(
                      "The blockage is usually due to a buildup of fat, cholesterol and other substances in the heart (coronary) arteries."),
                ],
              ),
            )
          ],
        ),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "The fatty, cholesterol-containing deposits are called plaques. The process of plaque buildup is called atherosclerosis."),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "Sometimes, a plaque can rupture and form a clot that blocks blood flow. A lack of blood flow can damage or destroy part of the heart muscle."),
      ],
    );
  }
}