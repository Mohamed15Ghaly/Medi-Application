import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class Causes extends StatelessWidget {
  const Causes({
    super.key,
    required this.causes,
    required this.causes1,
  });
  final String causes1;
  final List<String> causes;
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
                      "Causes :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                     Gap(context.height * .005),
                    Text(causes1),
                     Gap(context.height * .02),
                  ],
                )),
            Expanded(
              child: Image.asset(height: MediaQuery.of(context).size.height * 0.3,MediImage.diseasesCauses),
            )
          ],
        ),
         Gap(context.height * .005),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${causes[index]}"),
            separatorBuilder: (context, index) =>  Gap(context.height * .005),
            itemCount: causes.length),
         Gap(context.height * .01),
      ],
    );
  }
}
