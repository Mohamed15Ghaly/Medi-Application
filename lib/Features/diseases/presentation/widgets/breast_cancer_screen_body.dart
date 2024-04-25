import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/data/view_model/breast_cancer_model.dart';

class BreastCancerScreenBody extends StatelessWidget {
  const BreastCancerScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FittedBox(
          child: VideoPresentation(
            videoPath: "assets/images/breastCancer.mp4",
          ),
        ),
        Divider(),
        OverView(
          overView1: BreastCancerViewModel.overview1,
          overView2: BreastCancerViewModel.overview2,
          overView3: BreastCancerViewModel.overview3,
        ),
        Divider(),
        Symptoms(
          symptoms1: BreastCancerViewModel.symptoms1,
          symptoms2: BreastCancerViewModel.symptoms2,
          symptoms: BreastCancerViewModel.symptoms,
        ),
        Divider(),
        Doctor(doctor: BreastCancerViewModel.doctor),
        Divider(),
        Causes(
          causes1: BreastCancerViewModel.causes1,
          causes: BreastCancerViewModel.causes,
        ),
        Divider(),
        RiskFactors(
          riskFactors1: BreastCancerViewModel.riskFactors1,
          riskFactors2: BreastCancerViewModel.riskFactors2,
          riskFactors3: BreastCancerViewModel.riskFactors3,
          riskFactors4: BreastCancerViewModel.riskFactors4,
        ),
        Divider(),
        Prevention(
          prevention1: BreastCancerViewModel.prevention1,
          prevention: BreastCancerViewModel.prevention,
        ),
        Divider(),
        Complications(
          complications: BreastCancerViewModel.complications,
        )
      ],
    );
  }
}
