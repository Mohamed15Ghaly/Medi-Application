import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class HeartDiseasesSymptoms extends StatelessWidget {
  HeartDiseasesSymptoms({
    super.key,
  });

  final List<String> heartDiseasesSymptoms = [
  "Chest pain that may feel like pressure, tightness, pain, squeezing or aching",
    "anxiety that can feel similar to a panic attack",
    "Heartburn or indigestion.",
    "Nausea and vomiting.",
    "Shortness of breath",
    "Cold sweat.",
    "Lightheadedness or sudden dizziness",
    "Women may have atypical symptoms such as brief or sharp pain felt in the neck, arm or back. Sometimes, the first symptom sign of a heart attack is sudden cardiac arrest."
 "pain that may spread to arms, neck, jaw, or back",
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
                          "Symptoms of a heart attack vary. Some people have mild symptoms. Others have severe symptoms. Some people have no symptoms"),
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
          "Common heart attack symptoms include:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${heartDiseasesSymptoms[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: heartDiseasesSymptoms.length),
      ],
    );
  }
}