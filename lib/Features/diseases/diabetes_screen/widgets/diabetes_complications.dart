import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';

class DiabetesComplications extends StatelessWidget {
  const DiabetesComplications({
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
                "Long-term complications of diabetes develop gradually. The longer you have diabetes — and the less controlled your blood sugar — the higher the risk of complications. Eventually, diabetes complications may be disabling or even life-threatening. In fact, prediabetes can lead to type 2 diabetes. Possible complications include:")
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
            "Heart and blood vessel (cardiovascular) disease. Diabetes majorly increases the risk of many heart problems. These can include coronary artery disease with chest pain (angina), heart attack, stroke and narrowing of arteries (atherosclerosis). If you have diabetes, you're more likely to have heart disease or stroke."),
        const Gap(10),
        const Text(
            "Nerve damage from diabetes (diabetic neuropathy). Too much sugar can injure the walls of the tiny blood vessels (capillaries) that nourish the nerves, especially in the legs. This can cause tingling, numbness, burning or pain that usually begins at the tips of the toes or fingers and gradually spreads upward."),
        const Gap(10),
        const Text(
            "Damage to the nerves related to digestion can cause problems with nausea, vomiting, diarrhea or constipation. For men, it may lead to erectile dysfunction."),
        const Gap(10),
        const Text(
            "Kidney damage from diabetes (diabetic nephropathy). The kidneys hold millions of tiny blood vessel clusters (glomeruli) that filter waste from the blood. Diabetes can damage this delicate filtering system."),
        const Gap(10),
        const Text(
            "Eye damage from diabetes (diabetic retinopathy). Diabetes can damage the blood vessels of the eye. This could lead to blindness."),
        const Gap(10),
        const Text(
            "Foot damage. Nerve damage in the feet or poor blood flow to the feet increases the risk of many foot complications."),
        const Gap(10),
        const Text(
            "Skin and mouth conditions. Diabetes may leave you more prone to skin problems, including bacterial and fungal infections."),
        const Gap(10),
        const Text(
            "Hearing impairment. Hearing problems are more common in people with diabetes."),
      ],
    );
  }
}
