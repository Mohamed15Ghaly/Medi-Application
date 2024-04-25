import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class OverView extends StatelessWidget {
  const OverView({
    super.key,
    required this.overView1,
    required this.overView2,
    required this.overView3,
  });
  final String overView1, overView2, overView3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Image.asset(height: MediaQuery.of(context).size.height * 0.3,MediImage.diseasesOverview)),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Overview : ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                   Gap(context.height * .01),
                  Text(overView1),
                   Gap(context.height * .01),
                  Text(overView2),
                ],
              ),
            )
          ],
        ),
         Gap(context.height * .02),
        Text(textAlign: TextAlign.center, overView3),
         Gap(context.height * .01),
      ],
    );
  }
}
