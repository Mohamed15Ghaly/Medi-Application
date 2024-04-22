import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/view_model/heart_diseases_view_model.dart';

class HeartDiseasesScreenBody extends StatelessWidget {
  const HeartDiseasesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: const [
        VideoPresentation(
          videoPath: "assets/images/heartAttack.mp4",
        ),
        Divider(),
        OverView(
          overView1: HeartDiseasesViewModel.overview1,
          overView2: HeartDiseasesViewModel.overview2,
          overView3: HeartDiseasesViewModel.overview3,
        ),
        Divider(),
        Symptoms(
          symptoms1: HeartDiseasesViewModel.symptoms1,
          symptoms2: HeartDiseasesViewModel.symptoms2,
          symptoms: HeartDiseasesViewModel.symptoms,
        ),
        Divider(),
        Doctor(doctor: HeartDiseasesViewModel.doctor),
        Divider(),
        Causes(
          causes1: HeartDiseasesViewModel.causes1,
          causes: HeartDiseasesViewModel.causes,
        ),
        Divider(),
        RiskFactors(
          riskFactors1: HeartDiseasesViewModel.riskFactors1,
          riskFactors2: HeartDiseasesViewModel.riskFactors2,
          riskFactors3: HeartDiseasesViewModel.riskFactors3,
          riskFactors4: HeartDiseasesViewModel.riskFactors4,
        ),
        Divider(),
        Prevention(
          prevention1: HeartDiseasesViewModel.prevention1,
          prevention: HeartDiseasesViewModel.prevention,
        ),
        Divider(),
        Complications(
          complications: HeartDiseasesViewModel.complications,
        )
      ],
    );
  }
}
