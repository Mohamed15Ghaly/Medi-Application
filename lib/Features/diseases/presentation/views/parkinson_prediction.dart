import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/parkinson_prediction_body.dart';

class ParkinsonPredictionScreen extends StatelessWidget {
  const ParkinsonPredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ParkinsonPredictionBody(),
        ),
      ),
    );
  }
}
