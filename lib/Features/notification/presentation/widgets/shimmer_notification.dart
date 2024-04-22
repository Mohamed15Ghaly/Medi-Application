import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ShimmerNotification extends StatelessWidget {
  const ShimmerNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Shimmer.fromColors(
        baseColor: MediColors.fourthColor.withOpacity(.25),
        highlightColor: MediColors.secondaryColor,
        period: const Duration(seconds: 1),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: MediColors.fourthColor.withOpacity(.5),
            ),
                          Gap(context.height * .01),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: context.width / 25,
                  width: context.width / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MediColors.fourthColor.withOpacity(.5)),
                ),
                              Gap(context.height * .005),

                Container(
                  height: context.width / 25,
                  width: context.width / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MediColors.fourthColor.withOpacity(.5)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}