import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class Complications extends StatelessWidget {
  const Complications({
    super.key,
    required this.complications,
  });
  final String complications;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            const Text("Complications : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(complications)
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(MediImage.diseasesComplications1),
            ),
            const Gap(10),
            Expanded(
              child: Image.asset(MediImage.diseasesComplications2),
            ),
          ],
        ),
      ],
    );
  }
}
