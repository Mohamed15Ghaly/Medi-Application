import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class HeartDiseasesRiskFactors extends StatelessWidget {
  const HeartDiseasesRiskFactors({
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
                      "Age. Men age 45 and older and women age 55 and older are more likely to have a heart attack than are younger men and women."),
                  Gap(10),
                  Text(
                      "Tobacco use. This includes smoking and long-term exposure to secondhand smoke. If you smoke, quit."),
                  Gap(10),
                  Text(
                      "High blood pressure. Over time, high blood pressure can damage arteries that lead to the heart. High blood pressure that occurs with other conditions, such as obesity, high cholesterol or diabetes, increases the risk even more"),
                           Gap(10),
                  Text(
                        "Diabetes. Blood sugar rises when the body doesn't make a hormone called insulin or can't use it correctly. High blood sugar increases the risk of a heart attack."),
                           Gap(10),
                    Text(
                         "Not enough exercise. A lack of physical activity (sedentary lifestyle) is linked to a higher risk of heart attacks. Regular exercise improves heart health."),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
