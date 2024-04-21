import 'package:flutter/material.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_screen_body.dart';

class HeartDiseaseScreen extends StatelessWidget {
  const HeartDiseaseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HeartDiseasesScreenBody(),
        ),
      ),
    );
  }
}

