import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_media_query.dart';

double? getResponseFontSize(
    {required BuildContext context, required double fontSize}) {
  double? scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor!;
  double lowerLimit = fontSize * 1;
  double upperLimit = fontSize * 2.75;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double? getScaleFactor(BuildContext context) {
  double getScaleWidth = context.width;
  if (getScaleWidth < 801) {
    return getScaleWidth / 650;
  } else if (getScaleWidth < 1300) {
    return getScaleWidth / 850;
  } else {
    return getScaleWidth / 1101;
  }
}

class DefaultText extends StatelessWidget {
  const DefaultText({super.key, required this.txt, required this.color});
  final String txt;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: getResponseFontSize(context: context, fontSize: 14),
        color: color,
      ),
    );
  }
}
