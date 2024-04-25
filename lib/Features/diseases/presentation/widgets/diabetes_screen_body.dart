import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/data/view_model/diabetes_view_model.dart';
import 'package:team/core/utils/medi_videos.dart';

class DiabetesScreenBody extends StatelessWidget {
  const DiabetesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children:  [
        VideoPresentation(
          videoPath: MediVideos.diabetes,
        ),
        const Divider(),
        const OverView(
          overView1: DiabetesViewModel.overview1,
          overView2: DiabetesViewModel.overview2,
          overView3: DiabetesViewModel.overview3,
        ),
        const Divider(),
        const Symptoms(
          symptoms1: DiabetesViewModel.symptoms1,
          symptoms2: DiabetesViewModel.symptoms2,
          symptoms: DiabetesViewModel.symptoms,
        ),
        const Divider(),
        const Doctor(doctor: DiabetesViewModel.doctor),
        const Divider(),
        const Causes(
          causes1: DiabetesViewModel.causes1,
          causes: DiabetesViewModel.causes,
        ),
        const Divider(),
        const RiskFactors(
          riskFactors1: DiabetesViewModel.riskFactors1,
          riskFactors2: DiabetesViewModel.riskFactors2,
          riskFactors3: DiabetesViewModel.riskFactors3,
          riskFactors4: DiabetesViewModel.riskFactors4,
        ),
        const Divider(),
        const Prevention(
          prevention1: DiabetesViewModel.prevention1,
          prevention: DiabetesViewModel.prevention,
        ),
        const Divider(),
        const Complications(
          complications: DiabetesViewModel.complications,
        )
      ],
    );
  }
}