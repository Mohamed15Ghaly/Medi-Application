import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/heart_diseases_prediction_body.dart';

class HeartDiseasePredictionScreen extends StatelessWidget {
  const HeartDiseasePredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HeartDiseasesPredictionBody(),
        ),
      ),
    );
  }
}
