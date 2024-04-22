import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class Doctor extends StatelessWidget {
  const Doctor({
    super.key, required this.doctor,
  });
  final String doctor;
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "When to see a doctor :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                   Gap(context.height * .01),
                  Text(
                    doctor,
                    style: const TextStyle(),
                  ),
                   Gap(context.height * .01),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}