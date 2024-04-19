import 'package:flutter/material.dart';

double? GetResponseFontSize({required BuildContext context, required double fontsize}) {
  double? scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor!;
  double lowerlimit = fontsize * .95;
  double upperlimit = fontsize * 2.75;
  print('Size Of Screen${MediaQuery.sizeOf(context).width}');
  return responsiveFontSize.clamp(lowerlimit, upperlimit);

}

double? getScaleFactor(BuildContext context) {
  double GetScaleWidth = MediaQuery.sizeOf(context).width;
  if (GetScaleWidth < 801) {
    return GetScaleWidth / 650;
  } else if (GetScaleWidth < 1300) {
    return GetScaleWidth / 900;
  } else {
    return GetScaleWidth / 1100;
  }
}

class DefaultText extends StatelessWidget {
  const DefaultText({super.key , required this.txt, required this.color});
  final String txt;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: GetResponseFontSize(context: context, fontsize: 16),
        color:color,
      ),
    );
  }
}

