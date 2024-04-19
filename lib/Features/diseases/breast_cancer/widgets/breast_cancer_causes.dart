import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class Causes extends StatelessWidget {
  const Causes({
    super.key, required this.causes, required this.causes1,
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
                    const Gap(5),
                    Text(
causes1),
                    const Gap(20),
                   
                  ],
                )),
            Expanded(
              child: Image.asset(
                  MediAssets.diseasesCauses),
            )
          ],
        ),
        const Gap(5),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${causes[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: causes.length),
        const Gap(10),
        
      ],
    );
  }
}