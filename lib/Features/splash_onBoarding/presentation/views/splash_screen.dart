import 'package:flutter/material.dart';
import 'package:team/Features/splash_onBoarding/presentation/widgets/splash_screen_body.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_duration.dart';
import 'package:team/core/utils/medi_share.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/Features/splash_onBoarding/presentation/views/onBoarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MediColors.primaryColor,
        body: FutureBuilder(
            future: Future.delayed(
              MediDuration.splashDuration,
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashScreenBody();
              } else {
                var ans =
                    CacheHelper().getData(key: MediShare.appViewOnBoarding);
                if (ans == true) {
                  return  const LoginScreen();
                } else {
                  return const OnBoardingScreen();
                }
              }
            }));
  }
}
