import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class ParkinsonRiskFactors extends StatelessWidget {
  const ParkinsonRiskFactors({
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
                      "Age. Young adults rarely experience Parkinson's disease. It ordinarily begins in middle or late life, and the risk increases with age. People usually develop the disease around age 60 or older. If a young person does have Parkinson's disease, genetic counseling might be helpful in making family planning decisions."),
                  Gap(10),
                  Text(
                      "Heredity. Having a close relative with Parkinson's disease increases the chances that you'll develop the disease. However, your risks are still small unless you have many relatives in your family with Parkinson's disease."),
                  Gap(10),
                  Text(
                      "Sex. Men are more likely to develop Parkinson's disease than are women."),
                      Gap(10),
                  Text(
                      "Exposure to toxins. Ongoing exposure to herbicides and pesticides may slightly increase your risk of Parkinson's disease."),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
