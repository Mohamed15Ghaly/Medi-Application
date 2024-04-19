import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:team/components/response_font_size.dart';
import '../../../../models/on_Boarding_model.dart';

class OnBoardingItemBody extends StatelessWidget {
  const OnBoardingItemBody({
    super.key, required this.onBoardingModel,
  });
  final  OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(flex: 3,child: Image.asset(onBoardingModel.image,)),
        const Gap(25),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(onBoardingModel.title,
                style:TextStyle(
                    fontSize: GetResponseFontSize(context: context, fontsize: 30), fontWeight: FontWeight.bold, color: Colors.blue)),
          ),
        ),
        Text(
          onBoardingModel.description,
          style: TextStyle(color: Colors.blue, fontSize: GetResponseFontSize(context: context, fontsize: 16,),),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}