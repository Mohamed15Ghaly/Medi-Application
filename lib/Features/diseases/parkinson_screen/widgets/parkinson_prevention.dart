import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class ParkinsonPrevention extends StatelessWidget {
  const ParkinsonPrevention({
    super.key,
  });

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
                      "Prevention",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                        "Because the cause of Parkinson's is unknown, there are no proven ways to prevent the disease.")
                  ],
                )),
            const Gap(10),
            Expanded(
              child: Image.asset(
                  MediImage.diseasesPrevention),
            ),
          ],
        ),
        const Gap(10),
        const Text(
            "Some research has shown that regular aerobic exercise might reduce the risk of Parkinson's disease."),
        const Gap(10),
        const Text(
            "Some other research has shown that people who consume caffeine — which is found in coffee, tea and cola — get Parkinson's disease less often than those who don't drink it. "
            "Green tea also is related to a reduced risk of developing Parkinson's disease."
            " However, it is still not known whether caffeine protects against getting Parkinson's or is related in some other way. Currently there is not enough evidence to suggest that drinking caffeinated beverages protects against Parkinson's."),
        const Gap(10),
      ],
    );
  }
}