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
import 'package:team/core/utils/medi_videos.dart';

class BreastCancerScreenBody extends StatelessWidget {
  const BreastCancerScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        VideoPresentation(
          videoPath: MediVideos.breastCancer,
        ),
        const Divider(),
        const OverView(
          overView1: BreastCancerViewModel.overview1,
          overView2: BreastCancerViewModel.overview2,
          overView3: BreastCancerViewModel.overview3,
        ),
        const Divider(),
        const Symptoms(
          symptoms1: BreastCancerViewModel.symptoms1,
          symptoms2: BreastCancerViewModel.symptoms2,
          symptoms: BreastCancerViewModel.symptoms,
        ),
        const Divider(),
        const Doctor(doctor: BreastCancerViewModel.doctor),
        const Divider(),
        const Causes(
          causes1: BreastCancerViewModel.causes1,
          causes: BreastCancerViewModel.causes,
        ),
        const Divider(),
        const RiskFactors(
          riskFactors1: BreastCancerViewModel.riskFactors1,
          riskFactors2: BreastCancerViewModel.riskFactors2,
          riskFactors3: BreastCancerViewModel.riskFactors3,
          riskFactors4: BreastCancerViewModel.riskFactors4,
        ),
        const Divider(),
        const Prevention(
          prevention1: BreastCancerViewModel.prevention1,
          prevention: BreastCancerViewModel.prevention,
        ),
        const Divider(),
        const Complications(
          complications: BreastCancerViewModel.complications,
        )
      ],
    );
  }
}
