import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class DiabetesOverView extends StatelessWidget {
  const DiabetesOverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(MediImage.diseasesOverview),
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
                      "Diabetes mellitus refers to a group of diseases that affect how the body uses blood sugar (glucose). "),
                  Gap(10),
                  Text(
                      "Glucose is an important source of energy for the cells that make up the muscles and tissues. It's also the brain's main source of fuel."),
                ],
              ),
            )
          ],
        ),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "The main cause of diabetes varies by type. But no matter what type of diabetes you have, it can lead to excess sugar in the blood. Too much sugar in the blood can lead to serious health problems."),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "Chronic diabetes conditions include type 1 diabetes and type 2 diabetes. Potentially reversible diabetes conditions include prediabetes and gestational diabetes. Prediabetes happens when blood sugar levels are higher than normal. But the blood sugar levels aren't high enough to be called diabetes. And prediabetes can lead to diabetes unless steps are taken to prevent it. Gestational diabetes happens during pregnancy. But it may go away after the baby is born."),
      ],
    );
  }
}