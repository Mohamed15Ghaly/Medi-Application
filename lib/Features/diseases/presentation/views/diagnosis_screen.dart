import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/diseases/presentation/widgets/diagnosis_body.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 2),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LottieBuilder.asset(MediImage.diabetesSplash),
            );
          } else {
            return ShowCaseWidget(
              builder: Builder(builder: (context) => const DiagnosisBody()),
              autoPlay: true,
              autoPlayDelay: const Duration(seconds: 5),
            );
          }
        },
      ),
    );
  }
}
