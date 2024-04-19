import 'package:flutter/material.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_causes.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_complications.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_prevention.dart';
import 'package:team/Features/diseases/breast_cancer/widgets/breast_cancer_risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_vedio_presentation.dart';
import 'package:team/Features/diseases/view_model/breast_cancer_model.dart';

class BreastCancerScreenBody extends StatelessWidget {
  const BreastCancerScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VideoPresentation(
          videoPath: "assets/images/breastCancer.mp4",
        ),
        Divider(),
        OverView(
          overView1: BreastCancerViewModel.breastCancerOverview1,
          overView2: BreastCancerViewModel.breastCancerOverview2,
          overView3: BreastCancerViewModel.breastCancerOverview3,
        ),
        Divider(),
        Symptoms(
          symptoms1: BreastCancerViewModel.breastCancerSymptoms1,
          symptoms2: BreastCancerViewModel.breastCancerSymptoms2,
          symptoms: BreastCancerViewModel.breastCancerSymptoms,
        ),
        Divider(),
        Doctor(doctor: BreastCancerViewModel.breastCancerDoctor),
        Divider(),
        Causes(
          causes1: BreastCancerViewModel.breastCancerCauses1,
          causes: BreastCancerViewModel.breastCancerCauses,
        ),
        Divider(),
        // RiskFactors(),
        Divider(),
        BreastCancerPrevention(),
        Divider(),
        BreastCancerComplications()
      ],
    );
  }
}
