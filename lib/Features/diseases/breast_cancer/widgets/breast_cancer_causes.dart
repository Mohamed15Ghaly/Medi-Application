import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class Causes extends StatelessWidget {
  const Causes({
    super.key, required this.causes,
  });
final List<String> causes;
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
                        "The exact cause of most breast cancers isn't known. Researchers have found things that increase the risk of breast cancer. These include:"),
                    Gap(20),
                   
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