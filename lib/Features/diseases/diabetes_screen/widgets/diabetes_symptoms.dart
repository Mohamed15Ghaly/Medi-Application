import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiabetesSymptoms extends StatelessWidget {
  DiabetesSymptoms({
    super.key,
  });

  final List<String> diabetesSymptomsOfType = [
    "Feeling more thirsty than usual.",
    "Urinating often.",
    "Losing weight without trying.",
    "Presence of ketones in the urine. Ketones are a byproduct of the breakdown of muscle and fat that happens when there's not enough available insulin.",
    "Feeling tired and weak.",
    "Feeling irritable or having other mood changes.",
    "Having blurry vision.",
    "Having slow-healing sores.",
    "Getting a lot of infections, such as gum, skin and vaginal infections."
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Symptoms : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Gap(5),
                      Text(
                          "Diabetes symptoms depend on how high your blood sugar is. Some people, especially if they have prediabetes, gestational diabetes or type 2 diabetes, may not have symptoms. In type 1 diabetes, symptoms tend to come on quickly and be more severe."),
                    ],
                  ),
                ),
                const Gap(10),
                Expanded(
                    child: Image.asset(
                        MediAssets.diseasesSymptoms)),
              ],
            ),
          ],
        ),
        const Gap(10),
        const Text(
          "Some of the symptoms of type 1 diabetes and type 2 diabetes are:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${diabetesSymptomsOfType[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: diabetesSymptomsOfType.length),
      ],
    );
  }
}