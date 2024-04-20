import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class ParkinsonSymptoms extends StatelessWidget {
  ParkinsonSymptoms({
    super.key,
  });

  final List<String> parkinsonSymptoms = [
    "Tremor. Rhythmic shaking, called tremor, usually begins in a limb, often your hand or fingers. ",
    "Slowed movement, known as bradykinesia. Over time, Parkinson's disease may slow your movement, making simple tasks difficult and time-consuming. ",
    "Rigid muscles. Muscle stiffness may occur in any part of your body. ",
    "Impaired posture and balance. Your posture may become stooped.",
    "Loss of automatic movements. You may have a decreased ability to perform unconscious movements, including blinking, smiling or swinging your arms when you walk.",
    "Speech changes. You may speak softly or quickly, slur, or hesitate before talking.",
    "Writing changes. It may become hard to write, and your writing may appear small.",
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
                          "Parkinson's disease symptoms can be different for everyone. Early symptoms may be mild and go unnoticed. Symptoms often begin on one side of the body and usually remain worse on that side, even after symptoms begin to affect the limbs on both sides."),
                    ],
                  ),
                ),
                const Gap(10),
                Expanded(
                    child: Image.asset(
                        MediImage.diseasesSymptoms)),
              ],
            ),
          ],
        ),
        const Gap(10),
        const Text(
          "Parkinson's symptoms may include:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${parkinsonSymptoms[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: parkinsonSymptoms.length),
      ],
    );
  }
}