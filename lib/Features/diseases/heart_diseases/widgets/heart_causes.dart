import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class HeartDiseasesCauses extends StatelessWidget {
  HeartDiseasesCauses({
    super.key,
  });
  final List<String> coronaryArteries = [
  "Coronary arteries supply blood to the heart muscle",
  "Like all other tissues in the body, the heart muscle needs oxygen-rich blood to function.",
  "Also, oxygen-depleted blood must be carried away.",
  "The coronary arteries wrap around the outside of the heart.",
  "Small branches dive into the heart muscle to bring it blood.",
  ];
 
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
                      "Causes :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "To understand heart attack, it's important to understand the coronary heart disease ."),
                    Gap(20),
                    Text(
                      "What is the coronary heart disease  ?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "Coronary heart disease is a disease of the blood vessels supplying the heart muscle."),
                  ],
                )),
            Expanded(
              child: Image.asset(
                  MediImage.diseasesCauses),
            )
          ],
        ),
        const Gap(5),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${coronaryArteries[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: coronaryArteries.length),
        const Gap(10),
       
      ],
    );
  }
}