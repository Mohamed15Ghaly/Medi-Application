import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/data/view_model/heart_diseases_view_model.dart';
import 'package:team/core/utils/medi_videos.dart';

class HeartDiseasesScreenBody extends StatelessWidget {
  const HeartDiseasesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children:  [
        VideoPresentation(
          videoPath: MediVideos.heartAttack,
        ),
        const Divider(),
        const OverView(
          overView1: HeartDiseasesViewModel.overview1,
          overView2: HeartDiseasesViewModel.overview2,
          overView3: HeartDiseasesViewModel.overview3,
        ),
        const Divider(),
        const Symptoms(
          symptoms1: HeartDiseasesViewModel.symptoms1,
          symptoms2: HeartDiseasesViewModel.symptoms2,
          symptoms: HeartDiseasesViewModel.symptoms,
        ),
        const Divider(),
        const Doctor(doctor: HeartDiseasesViewModel.doctor),
        const Divider(),
        const Causes(
          causes1: HeartDiseasesViewModel.causes1,
          causes: HeartDiseasesViewModel.causes,
        ),
        const Divider(),
        const RiskFactors(
          riskFactors1: HeartDiseasesViewModel.riskFactors1,
          riskFactors2: HeartDiseasesViewModel.riskFactors2,
          riskFactors3: HeartDiseasesViewModel.riskFactors3,
          riskFactors4: HeartDiseasesViewModel.riskFactors4,
        ),
        const Divider(),
        const Prevention(
          prevention1: HeartDiseasesViewModel.prevention1,
          prevention: HeartDiseasesViewModel.prevention,
        ),
        const Divider(),
        const Complications(
          complications: HeartDiseasesViewModel.complications,
        )
      ],
    );
  }
}
