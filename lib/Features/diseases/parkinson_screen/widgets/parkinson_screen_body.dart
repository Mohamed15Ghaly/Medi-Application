import 'package:flutter/material.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_vedio_presentation.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_causes.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_complications.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_over_view.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_prevention.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_risk_factors.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_symptoms.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinsondoctor.dart';

class ParkinsonScreenBody extends StatelessWidget {
  const ParkinsonScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VideoPresentation(
          videoPath: "assets/images/parkinson.mp4",
        ),
        const Divider(),
        const ParkinsonOverView(),
        const Divider(),
        ParkinsonSymptoms(),
        const Divider(),
        const ParkinsonDoctor(),
        const Divider(),
        ParkinsonCauses(),
        const Divider(),
        const ParkinsonRiskFactors(),
        const Divider(),
        const ParkinsonPrevention(),
        const Divider(),
        const ParkinsonComplications()
      ],
    );
  }
}
