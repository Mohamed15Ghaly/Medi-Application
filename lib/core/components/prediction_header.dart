import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';

class PredictionHeader extends StatelessWidget {
  const PredictionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: context.height / 8,
            width: context.width,
            decoration: BoxDecoration(
              color: MediColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            )),
        FittedBox(
          child: SizedBox(
            height: context.height / 6,
            width: context.width,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              "Add the corresponding details and click Predict to find out whether you are at risk of contracting this disease",
                              style: TextStyle(
                                fontSize: getResponseFontSize(
                                    context: context, fontSize: 15),
                                // fontWeight: FontWeight.bold,
                                color: MediColors.secondaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(context.height * .01),
                Flexible(
                  child: Image.asset(MediImage.predictionDoctors),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
