import 'package:flutter/material.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_causes.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_complications.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_doctor.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_over_view.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_prevention.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_risk_factors.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_symptoms.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_vedio_presentation.dart';

class DiabetesScreenBody extends StatelessWidget {
  const DiabetesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VideoPresentation(
          videoPath: "assets/images/Diabetes.mp4",
        ),
        const Divider(),
        const DiabetesOverView(),
        const Divider(),
        DiabetesSymptoms(),
        const Divider(),
        const DiabetesDoctor(),
        const Divider(),
        DiabetesCauses(),
        const Divider(),
        const DiabetesRiskFactors(),
        const Divider(),
        const DiabetesPrevention(),
        const Divider(),
        const DiabetesComplications()
      ],
    );
  }
}