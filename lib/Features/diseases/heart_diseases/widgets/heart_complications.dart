import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';

class HeartDiseasesComplications extends StatelessWidget {
  const HeartDiseasesComplications({
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
                "Heart attack complications are often due to heart muscle damage. Potential complications of a heart attack include:")
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(MediImage.diseasesComplications1),
            ),
            const Gap(10),
            Expanded(
              child: Image.asset(MediImage.diseasesComplications2),
            ),
          ],
        ),
        const Text(
            "Irregular or atypical heart rhythms (arrhythmias). Heart attack damage can affect how electrical signals move through the heart, causing heartbeat changes. Some may be serious and can be deadly."),
        const Gap(10),
        const Text(
          "Cardiogenic shock. This rare condition occurs when the heart is suddenly and abruptly unable to pump blood."),
        const Gap(10),
        const Text(
            "Heart failure. A lot of damage to the heart muscle tissue can make the heart unable to pump blood. Heart failure can be temporary or long-lasting (chronic)."),
        const Gap(10),
        const Text(
            "Inflammation of the saclike tissue surrounding the heart (pericarditis). Sometimes a heart attack triggers a faulty immune system response. This condition may be called Dressler syndrome, postmyocardial infarction syndrome or postcardiac injury syndrome."),
        const Gap(10),
        const Text(
            "Cardiac arrest. Without warning, the heart stops. A sudden change in the heart's signaling causes sudden cardiac arrest. A heart attack increases the risk of this life-threatening condition. It can lead to death (sudden cardiac death) without immediate treatment."),
      ],
    );
  }
}
