import 'package:flutter/material.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_screen_body.dart';
import 'package:team/core/components/floating.dart';

class BreastCancerScreen extends StatelessWidget {
  const BreastCancerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: BreastCancerScreenBody(),
        ),
      ),
    );
  }
}