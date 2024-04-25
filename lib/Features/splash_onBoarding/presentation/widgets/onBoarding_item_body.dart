import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';
import '../../data/models/on_Boarding_model.dart';

class OnBoardingItemBody extends StatelessWidget {
  const OnBoardingItemBody({
    super.key,
    required this.onBoardingModel,
  });
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
            flex: 3,
            child: Image.asset(
              onBoardingModel.image,
            )),
         Gap(context.height * .025),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(onBoardingModel.title,
                style: TextStyle(
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 30),
                    fontWeight: FontWeight.bold,
                    color: MediColors.primaryColor)),
          ),
        ),
        Text(
          onBoardingModel.description,
          style: TextStyle(
            color: MediColors.primaryColor,
            fontSize: getResponseFontSize(
              context: context,
              fontSize: 16,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
