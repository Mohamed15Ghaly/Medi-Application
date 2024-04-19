import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Help extends StatelessWidget {
 Help({
    super.key,
  });
    final List<String> CPR_Steps= [
    "Call 911 or ask someone else to.",
    "Lay the person on their back and open their airway.",
    "Check for breathing. If they are not breathing, start CPR.",
    "Perform 30 chest compressions.",
    "Perform two rescue breaths.",
    "Repeat until an ambulance or automated external defibrillator (AED) arrives.",
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What to do if you see someone who might be having a heart attack :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Gap(20),
            const Text(
              "If someone is unconscious and you think they're having a heart attack, first:",
              style: TextStyle(),
            ),
           
         ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${CPR_Steps[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: CPR_Steps.length),
        const Gap(10),
           
          ],
        )
        ,
       
      ],

    );
  }
}