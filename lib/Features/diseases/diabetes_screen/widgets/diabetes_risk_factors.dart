import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiabetesRiskFactors extends StatelessWidget {
  const DiabetesRiskFactors({
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
                      "Risk factors for diabetes depend on the type of diabetes. Family history may play a part in all types. Environmental factors and geography can add to the risk of type 1 diabetes."),
                  Gap(10),
                  Text(
                      "Sometimes family members of people with type 1 diabetes are tested for the presence of diabetes immune system cells (autoantibodies). If you have these autoantibodies, you have an increased risk of developing type 1 diabetes. But not everyone who has these autoantibodies develops diabetes."),
                  Gap(10),
                  Text(
                      "Risk factors for diabetes depend on the type of diabetes. Family history may play a part in all types. Environmental factors and geography can add to the risk of type 1 diabetes."),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
