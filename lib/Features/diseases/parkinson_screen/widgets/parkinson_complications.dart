import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class ParkinsonComplications extends StatelessWidget {
  const ParkinsonComplications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text("Complications : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(
                "Parkinson's disease is often accompanied by these additional problems, which may be treatable:")
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(MediAssets.diseasesComplications1),
            ),
            const Gap(10),
            Expanded(
              child: Image.asset(MediAssets.diseasesComplications2),
            ),
          ],
        ),
        const Text(
            "Thinking difficulties. You may experience cognitive problems, such as dementia, and thinking difficulties. These usually occur in the later stages of Parkinson's disease. Such cognitive problems aren't usually helped by medicines."),
        const Gap(10),
        const Text(
            "Depression and emotional changes. You may experience depression, sometimes in the very early stages. Receiving treatment for depression can make it easier to handle the other challenges of Parkinson's disease."
            "You also may experience other emotional changes, such as fear, anxiety or loss of motivation. Your health care team may give you medicine to treat these symptoms."),
        const Gap(10),
        const Text(
            "Swallowing problems. You may develop difficulties with swallowing as your condition progresses. Saliva may accumulate in your mouth due to slowed swallowing, leading to drooling."),
        const Gap(10),
        const Text(
            "Chewing and eating problems. Late-stage Parkinson's disease affects the muscles in the mouth, making chewing difficult. This can lead to choking and poor nutrition."),
        const Gap(10),
        const Text(
            "Sleep problems and sleep disorders. People with Parkinson's disease often have sleep problems, including waking up frequently throughout the night, waking up early or falling asleep during the day."
            "People also may experience rapid eye movement sleep behavior disorder, which involves acting out dreams. Medicines may improve your sleep."
            ),
        const Gap(10),
        const Text(
            "Bladder problems. Parkinson's disease may cause bladder problems, including being unable to control urine or having difficulty in urinating."),
        const Gap(10),
        const Text(
            "Constipation. Many people with Parkinson's disease develop constipation, mainly due to a slower digestive tract."),
        const Gap(10),
        const Text(
            "Blood pressure changes. You may feel dizzy or lightheaded when you stand due to a sudden drop in blood pressure (orthostatic hypotension)."),
                const Gap(10),
        const Text(
            "Smell dysfunction. You may experience problems with your sense of smell. You may have trouble identifying certain odors or the difference between odors"),
                const Gap(10),
        const Text(
            "Fatigue. Many people with Parkinson's disease lose energy and experience fatigue, especially later in the day. The cause isn't always known."),
                       const Gap(10),
        const Text(
            "Pain. Some people with Parkinson's disease experience pain, either in specific areas of their bodies or throughout their bodies."),
      ],
    );
  }
}
