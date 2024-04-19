import 'package:flutter/material.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_vedio_presentation.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_causes.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_complications.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_doctor.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_over_view.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_prevention.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_risk_factors.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_symptoms.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/help.dart';

class HeartDiseasesScreenBody extends StatelessWidget {
  const HeartDiseasesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VideoPresentation(
          videoPath: "assets/images/heartAttack.mp4",
        ),
        const Divider(),
        const HeartDiseasesOverView(),
        const Divider(),
        HeartDiseasesSymptoms(),
        const Divider(),
        const HeartDiseasesDoctor(),
        const Divider(),
        HeartDiseasesCauses(),
        const Divider(),
        Help(),
        const Divider(),
        const HeartDiseasesRiskFactors(),
        const Divider(),
        const HeartDiseasesPrevention(),
        const Divider(),
        const HeartDiseasesComplications()
      ],
    );
  }
}