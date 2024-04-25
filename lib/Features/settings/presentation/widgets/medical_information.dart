import 'package:flutter/material.dart';
import 'package:team/Features/settings/data/view_model/question_data.dart';
import 'package:team/Features/settings/presentation/widgets/questions_body.dart';
import 'package:team/core/utils/medi_image.dart';

class MedicalInformation extends StatelessWidget {
  const MedicalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(MediImage.medicalInformation),
          const QuestionsBody(
            questions: QuestionsDataViewModel.medicalInformationData,
          ),
        ],
      ),
    );
  }
}
