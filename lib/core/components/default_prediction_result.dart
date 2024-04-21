import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/core/components/custom_material_button.dart';
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
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: resultWidget,
            )
          ],
        ))),
    isScrollControlled: true,
    barrierColor: Colors.black.withOpacity(0.75),
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
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, color: Colors.grey, size: 15),
            Gap(5),
            Text(
              "You should visit your doctor and take care of yourself.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/diseases/Doctor-rafiki.png"),
        const Text(
            "Congratulations , You have been not diagnosed with diabetes.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const Divider(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check, color: Colors.grey, size: 15),
            Gap(5),
            Text(
              "Your health is fine now , I'm glad to tell you that .",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
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
            const Icon(Icons.email, color: Colors.grey, size: 15),
            const Gap(5),
            Text(
              title2,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
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
