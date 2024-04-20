import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class OverView extends StatelessWidget {
  const OverView({
    super.key,
    required this.overView1,
    required this.overView2,
    required this.overView3,
  });
  final String overView1, overView2, overView3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(MediImage.diseasesOverview),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Overview : ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const Gap(10),
                  Text(overView1),
                  const Gap(10),
                  Text(overView2),
                ],
              ),
            )
          ],
        ),
        const Gap(10),
        Text(textAlign: TextAlign.center, overView3),
        const Gap(10),
      ],
    );
  }
}
