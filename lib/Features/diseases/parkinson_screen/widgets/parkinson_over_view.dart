import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class ParkinsonOverView extends StatelessWidget {
  const ParkinsonOverView({
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
                      "Parkinson's disease is a progressive disorder that affects the nervous system and the parts of the body controlled by the nerves. "),
                  Gap(10),
                  Text(
                      "Symptoms start slowly. The first symptom may be a barely noticeable tremor in just one hand. Tremors are common, but the disorder also may cause stiffness or slowing of movement."),
                ],
              ),
            )
          ],
        ),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "In the early stages of Parkinson's disease, your face may show little or no expression. Your arms may not swing when you walk. Your speech may become soft or slurred. Parkinson's disease symptoms worsen as your condition progresses over time."),
        const Gap(10),
      ],
    );
  }
}