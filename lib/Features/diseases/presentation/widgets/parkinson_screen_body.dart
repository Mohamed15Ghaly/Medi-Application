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
import 'package:team/core/utils/medi_videos.dart';

class ParkinsonScreenBody extends StatelessWidget {
  const ParkinsonScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        VideoPresentation(
          videoPath: MediVideos.parkinson,
        ),
        const Divider(),
        const OverView(
          overView1: ParkinsonViewModel.overview1,
          overView2: ParkinsonViewModel.overview2,
          overView3: ParkinsonViewModel.overview3,
        ),
        const Divider(),
        const Symptoms(
          symptoms1: ParkinsonViewModel.symptoms1,
          symptoms2: ParkinsonViewModel.symptoms2,
          symptoms: ParkinsonViewModel.symptoms,
        ),
        const Divider(),
        const Doctor(doctor: ParkinsonViewModel.doctor),
        const Divider(),
        const Causes(
          causes1: ParkinsonViewModel.causes1,
          causes: ParkinsonViewModel.causes,
        ),
        const Divider(),
        const RiskFactors(
          riskFactors1: ParkinsonViewModel.riskFactors1,
          riskFactors2: ParkinsonViewModel.riskFactors2,
          riskFactors3: ParkinsonViewModel.riskFactors3,
          riskFactors4: ParkinsonViewModel.riskFactors4,
        ),
        const Divider(),
        const Prevention(
          prevention1: ParkinsonViewModel.prevention1,
          prevention: ParkinsonViewModel.prevention,
        ),
        const Divider(),
        const Complications(
          complications: ParkinsonViewModel.complications,
        )
      ],
    );
  }
}
