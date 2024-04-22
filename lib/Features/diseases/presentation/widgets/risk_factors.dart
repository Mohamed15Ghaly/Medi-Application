import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

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
                              Gap(context.height * .01),

                  Text(riskFactors1),
                               Gap(context.height * .01),

                  Text(riskFactors2),
                               Gap(context.height * .01),

                  Text(riskFactors3),
                             Gap(context.height * .01),

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
