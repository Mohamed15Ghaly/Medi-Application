import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/core/utils/medi_duration.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/medi_strings.dart';
import 'package:team/core/utils/response_font_size.dart';


class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: MediDuration.slideTextDuration,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: const Offset(0, 0),
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Lottie.asset(
              MediAssets.appSplash,
              width: context.width * 0.5,
            ),
          ),
          const Gap(25),
          Flexible(
            child: FittedBox(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) => SlideTransition(
                  position: _slideAnimation,
                  child: FittedBox(
                    child: DefaultText(
                      txt: MediStrings.appSplashText,
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
