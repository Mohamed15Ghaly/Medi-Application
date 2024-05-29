import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/medi_strings.dart';
import 'package:team/core/utils/response_font_size.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Lottie.asset(
              MediImage.appSplash,
              width: context.width * 0.5,
            ),
          ),
          const Gap(25),
          FadeInUp(
            duration: const Duration(milliseconds: 1250),
            child: Flexible(
              child: FittedBox(
                child: DefaultText(
                  txt: MediStrings.appSplashText,
                  color: MediColors.secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
