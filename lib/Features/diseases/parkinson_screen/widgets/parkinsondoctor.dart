import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class ParkinsonDoctor extends StatelessWidget {
  const ParkinsonDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  MediImage.diseasesDoctor),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "When to see a doctor :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Gap(10),
                  Text(
                    "See a health care professional if you have any of the symptoms associated with Parkinson's disease — not only to diagnose your condition but also to rule out other causes for your symptoms",
                    style: TextStyle(),
                  ),
                  Gap(10),
                 
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}