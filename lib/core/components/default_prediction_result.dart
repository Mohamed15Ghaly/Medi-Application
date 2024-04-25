import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

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
        FittedBox(
          child: Image.asset(
              "assets/images/diseases/Health professional team-amico.png"),
        ),
        SizedBox(
          height: context.height/13,
          child: AutoSizeText(response,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              child: FittedBox(
                child: Icon(Icons.info_outline,
                    color: MediColors.fourthColor, size: 15),
              ),
            ),
            Gap(context.height * .005),
            const Flexible(
              child: Text(
                "You should visit your doctor and take care of yourself.",
                textAlign: TextAlign.center,
                style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
              ),
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
        FittedBox(child: Image.asset(height: context.height/2.8,"assets/images/diseases/Doctor-rafiki.png")),
        SizedBox(
          height: context.height/13,
          child: AutoSizeText(
              response,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getResponseFontSize(context: context, fontSize: 18),
                fontWeight: FontWeight.bold,
              )),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: FittedBox(child: Icon(Icons.check, color: MediColors.fourthColor, size: 16))),
            Gap(context.height * .005),
            const Flexible(
              child: Text(
                "Your health is fine now , I'm glad to tell you that .",
                textAlign: TextAlign.center,
                style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
              ),
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
        FittedBox(child: Image.asset(MediImage.signInVerifyImage)),
        SizedBox(
          height: context.height/13,
          child: AutoSizeText(title1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: FittedBox(child: Icon(Icons.email, color: MediColors.fourthColor, size: 16))),
            Gap(context.height * .005),
            Flexible(
              child: Text(
                title2,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(color: MediColors.fourthColor, fontSize: 8),
              ),
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
