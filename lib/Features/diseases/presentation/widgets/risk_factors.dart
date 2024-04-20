import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class RiskFactors extends StatelessWidget {
  const RiskFactors({
    super.key,
    required this.riskFactors1,
    required this.riskFactors2,
    required this.riskFactors3,
    required this.riskFactors4,
  });
  final String riskFactors1, riskFactors2, riskFactors3, riskFactors4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(MediImage.diseasesRiskFactors),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Risk factors : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  const Gap(10),
                  Text(riskFactors1),
                  const Gap(10),
                  Text(riskFactors2),
                  const Gap(10),
                  Text(riskFactors3),
                  const Gap(10),
                  Text(riskFactors4),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
