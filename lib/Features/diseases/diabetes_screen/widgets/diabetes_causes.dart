import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiabetesCauses extends StatelessWidget {
  DiabetesCauses({
    super.key,
  });
  final List<String> insulinWorks = [
    "The pancreas releases insulin into the bloodstream.",
    "The insulin circulates, letting sugar enter the cells.",
    "Insulin lowers the amount of sugar in the bloodstream.",
    "As the blood sugar level drops, so does the secretion of insulin from the pancreas.",
  ];
  final List<String> roleOfGlucose = [
    "Glucose comes from two major sources: food and the liver.",
    "Sugar is absorbed into the bloodstream, where it enters cells with the help of insulin.",
    "The liver stores and makes glucose.",
    "When glucose levels are low, such as when you haven't eaten in a while, the liver breaks down stored glycogen into glucose. This keeps your glucose level within a typical range.",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Causes :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "To understand diabetes, it's important to understand how the body normally uses glucose."),
                    Gap(20),
                    Text(
                      "How insulin works ?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "Insulin is a hormone that comes from a gland behind and below the stomach (pancreas)."),
                  ],
                )),
            Expanded(
              child: Image.asset(
                  MediAssets.diseasesCauses),
            )
          ],
        ),
        const Gap(5),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${insulinWorks[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: insulinWorks.length),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("The role of glucose :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const Gap(5),
            const Text(
                "Glucose — a sugar — is a source of energy for the cells that make up muscles and other tissues."),
            const Gap(10),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    Text("${index + 1} : ${roleOfGlucose[index]}"),
                separatorBuilder: (context, index) => const Gap(5),
                itemCount: roleOfGlucose.length),
            const Gap(10),
            const Text(
                "The exact cause of most types of diabetes is unknown. In all cases, sugar builds up in the bloodstream. This is because the pancreas doesn't produce enough insulin. Both type 1 and type 2 diabetes may be caused by a combination of genetic or environmental factors. It is unclear what those factors may be."),
          ],
        )
      ],
    );
  }
}