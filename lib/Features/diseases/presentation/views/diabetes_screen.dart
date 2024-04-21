import 'package:flutter/material.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_screen_body.dart';


class DiabetesScreen extends StatelessWidget {
  const DiabetesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: DiabetesScreenBody(),
        ),
      ),
    );
  }
}

