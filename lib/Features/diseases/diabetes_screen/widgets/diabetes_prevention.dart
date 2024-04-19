import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiabetesPrevention extends StatelessWidget {
  const DiabetesPrevention({
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
                        "Type 1 diabetes can't be prevented. But the healthy lifestyle choices that help treat prediabetes, type 2 diabetes and gestational diabetes can also help prevent them:")
                  ],
                )),
            const Gap(10),
            Expanded(
              child: Image.asset(
                  MediAssets.diseasesPrevention),
            ),
          ],
        ),
        const Gap(10),
        const Text(
            "Eat healthy foods. Choose foods lower in fat and calories and higher in fiber. Focus on fruits, vegetables and whole grains. Eat a variety to keep from feeling bored."),
        const Gap(10),
        const Text(
            "Get more physical activity. Try to get about 30 minutes of moderate aerobic activity on most days of the week. Or aim to get at least 150 minutes of moderate aerobic activity a week. For example, take a brisk daily walk. If you can't fit in a long workout, break it up into smaller sessions throughout the day."),
        const Gap(10),
        const Text(
            "Lose excess pounds. If you're overweight, losing even 7% of your body weight can lower the risk of diabetes. For example, if you weigh 200 pounds (90.7 kilograms), losing 14 pounds (6.4 kilograms) can lower the risk of diabetes."
            "But don't try to lose weight during pregnancy. Talk to your provider about how much weight is healthy for you to gain during pregnancy."
            "To keep your weight in a healthy range, work on long-term changes to your eating and exercise habits. Remember the benefits of losing weight, such as a healthier heart, more energy and higher self-esteem."),
        const Gap(10),
      ],
    );
  }
}