import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class ParkinsonCauses extends StatelessWidget {
  ParkinsonCauses({
    super.key,
  });
  final List<String> parkinsonCauses = [
    "Genes. Researchers have identified specific genetic changes that can cause Parkinson's disease. But these are uncommon except in rare cases with many family members affected by Parkinson's disease.However, certain gene variations appear to increase the risk of Parkinson's disease but with a relatively small risk of Parkinson's disease for each of these genetic markers",
    "Environmental triggers. Exposure to certain toxins or environmental factors may increase the risk of later Parkinson's disease, but the risk is small.",
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
                        "In Parkinson's disease, certain nerve cells called neurons in the brain gradually break down or die. Many of the symptoms of Parkinson's are due to a loss of neurons that produce a chemical messenger in your brain called dopamine. When dopamine levels decrease, it causes irregular brain activity, leading to problems with movement and other symptoms of Parkinson's disease."),
                    Gap(20),
                    Text(
                      "The cause of Parkinson's disease is unknown, but several factors appear to play a role, including:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
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
                Text("${index + 1} : ${parkinsonCauses[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: parkinsonCauses.length),
        const Gap(10),
        
      ],
    );
  }
}