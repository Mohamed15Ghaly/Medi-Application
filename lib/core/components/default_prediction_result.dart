import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';

Future<dynamic> defaultActionResult(
    {required BuildContext context, required Widget resultWidget}) {
  return Get.bottomSheet(
    SizedBox(
        height: context.height,
        width: context.width,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: context.width * .8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MediColors.secondaryColor),
              child: resultWidget,
            )
          ],
        ))),
    isScrollControlled: true,
    barrierColor: MediColors.thirdColor.withOpacity(0.75),
  );
}

class Diagnosed extends StatelessWidget {
  const Diagnosed({
    super.key,
    required this.response,
  });
  final String response;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            "assets/images/diseases/Health professional team-amico.png"),
        Text(response,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.info_outline,
                color: MediColors.fourthColor, size: 15),
            Gap(context.height * .005),
            const Text(
              "You should visit your doctor and take care of yourself.",
              textAlign: TextAlign.center,
              style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
            ),
          ],
        ),
        const Divider(),
        CustomButton(
            title: "Ok",
            onPressed: () {
              Get.back();
            }),
      ],
    );
  }
}

class NotDiagnosed extends StatelessWidget {
  const NotDiagnosed({
    super.key, required this.response,
  });
final String response;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/diseases/Doctor-rafiki.png"),
         Text(
            response,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check, color: MediColors.fourthColor, size: 16),
            Gap(context.height * .005),
            const Text(
              "Your health is fine now , I'm glad to tell you that .",
              textAlign: TextAlign.center,
              style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
            ),
          ],
        ),
        const Divider(),
        CustomButton(
            title: "Ok",
            onPressed: () {
              Get.back();
            }),
      ],
    );
  }
}

class Verified extends StatelessWidget {
  const Verified({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1, title2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MediImage.signInVerifyImage),
        Text(title1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email, color: MediColors.fourthColor, size: 16),
            Gap(context.height * .005),
            Text(
              title2,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: MediColors.fourthColor, fontSize: 8),
            ),
          ],
        ),
        const Divider(),
        CustomButton(
            title: "Ok",
            onPressed: () {
              Get.back();
            }),
      ],
    );
  }
}
