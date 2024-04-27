import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_media_query.dart';

double? getResponseFontSize(
    {required BuildContext context, required double fontSize}) {
  double? scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor!;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double? getScaleFactor(BuildContext context) {
  double getScaleWidth = context.width;
  if (getScaleWidth < 601) {
    return getScaleWidth / 400;
  } else if (getScaleWidth < 900) {
    return getScaleWidth / 700;
  } else {
    return getScaleWidth / 1000;
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
