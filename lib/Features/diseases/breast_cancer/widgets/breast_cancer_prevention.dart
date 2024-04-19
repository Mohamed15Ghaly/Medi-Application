import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class BreastCancerPrevention extends StatelessWidget {
  const BreastCancerPrevention({
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
                        "Making changes in your daily life may help lower your risk of breast cancer. Try to:")
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
            "Ask about breast cancer screening. Talk with your doctor or other healthcare professional about when to begin breast cancer screening."),
        const Gap(10),
        const Text(
            "Become familiar with your breasts through breast self-exam for breast awareness. You may choose to become familiar with your breasts by occasionally inspecting them during a breast self-exam for breast awareness. If there is a new change, a lump or something not typical in your breasts, report it to a healthcare professional right away."),
        const Gap(10),
        const Text(
            "Breast awareness can't prevent breast cancer. But it may help you to better understand the look and feel of your breasts. This might make it more likely that you'll notice if something changes."),
        const Gap(10),
        const Text(
            "Exercise most days of the week. Aim for at least 30 minutes of exercise on most days of the week. If you haven't been active lately, ask a healthcare professional whether it's OK and start slowly."),
        const Gap(10),
        const Text(
            "Limit menopausal hormone therapy. Combination hormone therapy may increase the risk of breast cancer. Talk with a healthcare professional about the benefits and risks of hormone therapy."
          "Some people have symptoms during menopause that cause discomfort. These people may decide that the risks of hormone therapy are acceptable in order to get relief. To reduce the risk of breast cancer, use the lowest dose of hormone therapy possible for the shortest amount of time."),
        const Gap(10),
        const Text(
            "Maintain a healthy weight. If your weight is healthy, work to maintain that weight. If you need to lose weight, ask a healthcare professional about healthy ways to lower your weight. Eat fewer calories and slowly increase the amount of exercise."),
        const Gap(10),
      ],
    );
  }
}