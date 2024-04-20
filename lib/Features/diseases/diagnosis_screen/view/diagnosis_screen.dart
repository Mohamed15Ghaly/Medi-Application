import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/diseases/diagnosis_screen/widgets/diagnosis_body.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen(
      {super.key,
      required this.diagnosisScreen,
      required this.predictionInput});
  final Widget diagnosisScreen, predictionInput;

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
            return DiagnosisBody(
              diabetesScreenBody: diagnosisScreen,
              predictionInputBody: predictionInput,
            );
          }
        },
      ),
    );
  }
}

// ignore: must_be_immutable
