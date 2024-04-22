import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/breast_cancer_screen_body.dart';

class BreastCancerScreen extends StatelessWidget {
  const BreastCancerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: BreastCancerScreenBody(),
        ),
      ),
    );
  }
}