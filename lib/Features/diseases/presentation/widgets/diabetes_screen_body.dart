import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team/Features/diseases/presentation/widgets/causes.dart';
import 'package:team/Features/diseases/presentation/widgets/complications.dart';
import 'package:team/Features/diseases/presentation/widgets/doctors.dart';
import 'package:team/Features/diseases/presentation/widgets/overview.dart';
import 'package:team/Features/diseases/presentation/widgets/prevention.dart';
import 'package:team/Features/diseases/presentation/widgets/risk_factors.dart';
import 'package:team/Features/diseases/presentation/widgets/symptoms.dart';
import 'package:team/Features/diseases/presentation/widgets/video_presentation.dart';
import 'package:team/Features/diseases/data/view_model/diabetes_view_model.dart';

class DiabetesScreenBody extends StatelessWidget {
  const DiabetesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: const [
        FittedBox(
          child: VideoPresentation(
            videoPath: "assets/images/Diabetes.mp4",
          ),
        ),
        Divider(),
        OverView(
          overView1: DiabetesViewModel.overview1,
          overView2: DiabetesViewModel.overview2,
          overView3: DiabetesViewModel.overview3,
        ),
        Divider(),
        Symptoms(
          symptoms1: DiabetesViewModel.symptoms1,
          symptoms2: DiabetesViewModel.symptoms2,
          symptoms: DiabetesViewModel.symptoms,
        ),
        Divider(),
        Doctor(doctor: DiabetesViewModel.doctor),
        Divider(),
        Causes(
          causes1: DiabetesViewModel.causes1,
          causes: DiabetesViewModel.causes,
        ),
        Divider(),
        RiskFactors(
          riskFactors1: DiabetesViewModel.riskFactors1,
          riskFactors2: DiabetesViewModel.riskFactors2,
          riskFactors3: DiabetesViewModel.riskFactors3,
          riskFactors4: DiabetesViewModel.riskFactors4,
        ),
        Divider(),
        Prevention(
          prevention1: DiabetesViewModel.prevention1,
          prevention: DiabetesViewModel.prevention,
        ),
        Divider(),
        Complications(
          complications: DiabetesViewModel.complications,
        )
      ],
    );
  }
}