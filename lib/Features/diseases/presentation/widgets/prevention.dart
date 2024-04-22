import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class Prevention extends StatelessWidget {
  const Prevention({
    super.key, required this.prevention1, required this.prevention,
  });
final String prevention1;
final List<String> prevention;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Prevention",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(prevention1)
                  ],
                )),
                         Gap(context.height * .01),

            Expanded(
              child: Image.asset(
                  MediImage.diseasesPrevention),
            ),
          ],
        ),
        const Gap(10),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${prevention [index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: prevention.length)
      ],
    );
  }
}