import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/diabetes_prediction_prediction_body.dart';

class DiabetesPredictionScreen extends StatelessWidget {
  const DiabetesPredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child:DiabetesPredictionBody(),
        )     
      )
    );
  }
}
