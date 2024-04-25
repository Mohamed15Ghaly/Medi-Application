import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

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
            height: context.height/3.2,
              MediImage.diagnosed,),
        ),
        FittedBox(
          child: Text(response,
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: getResponseFontSize(context: context, fontSize: 16),
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
        FittedBox(
          child: CustomButton(
              title: "Ok",
              onPressed: () {
                Get.back();
              }),
        ),
      ],
    );
  }
}