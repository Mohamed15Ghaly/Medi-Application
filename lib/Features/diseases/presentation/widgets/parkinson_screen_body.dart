import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/data/view_model/parkinson_view_model.dart';

class ParkinsonScreenBody extends StatelessWidget {
  const ParkinsonScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VideoPresentation(
          videoPath: "assets/images/parkinson.mp4",
        ),
        Divider(),
        OverView(
          overView1: ParkinsonViewModel.overview1,
          overView2: ParkinsonViewModel.overview2,
          overView3: ParkinsonViewModel.overview3,
        ),
        Divider(),
        Symptoms(
          symptoms1: ParkinsonViewModel.symptoms1,
          symptoms2: ParkinsonViewModel.symptoms2,
          symptoms: ParkinsonViewModel.symptoms,
        ),
        Divider(),
        Doctor(doctor: ParkinsonViewModel.doctor),
        Divider(),
        Causes(
          causes1: ParkinsonViewModel.causes1,
          causes: ParkinsonViewModel.causes,
        ),
        Divider(),
        RiskFactors(
          riskFactors1: ParkinsonViewModel.riskFactors1,
          riskFactors2: ParkinsonViewModel.riskFactors2,
          riskFactors3: ParkinsonViewModel.riskFactors3,
          riskFactors4: ParkinsonViewModel.riskFactors4,
        ),
        Divider(),
        Prevention(
          prevention1: ParkinsonViewModel.prevention1,
          prevention: ParkinsonViewModel.prevention,
        ),
        Divider(),
        Complications(
          complications: ParkinsonViewModel.complications,
        )
      ],
    );
  }
}
