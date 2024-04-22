import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class Symptoms extends StatelessWidget {
 const  Symptoms({
    super.key, required this.symptoms1, required this.symptoms2, required this.symptoms,
  });
  final String symptoms1 , symptoms2;
  final List<String> symptoms;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                 Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Symptoms : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                                   Gap(context.height * .005),

                      Text(
                          symptoms1),
                    ],
                  ),
                ),
                             Gap(context.height * .01),

                Expanded(
                    child: Image.asset(
                        MediImage.diseasesSymptoms)),
              ],
            ),
          ],
        ),
                     Gap(context.height * .01),

         Text(
          symptoms2,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${symptoms[index]}"),
            separatorBuilder: (context, index) =>  Gap(context.height * .005),

            itemCount: symptoms.length),
      ],
    );
  }
}