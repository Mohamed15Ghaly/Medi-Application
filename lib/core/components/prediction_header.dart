import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/core/utils/medi_media_query.dart';

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
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            )),
        SizedBox(
          height: context.height / 6,
          width: context.width,
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: Align(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add the corresponding details and click Predict to find out whether you are at risk of contracting this disease",
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: Image.asset(MediAssets.predictionDoctors),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
