import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/breast_cancer_prediction_body.dart';

class BreastCancerPredictionScreen extends StatelessWidget {
  const BreastCancerPredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: BreastCancerPredictionBody(),
        ),
      ),
    );
  }
}
