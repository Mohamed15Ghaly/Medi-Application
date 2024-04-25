import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/utils/medi_colors.dart';

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






