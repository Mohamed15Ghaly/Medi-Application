import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/app_menu/data/view_model/question_data.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/questions_body.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class MedicalInformation extends StatelessWidget {
  const MedicalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(height: context.height/2,MediImage.medicalInformation),
          const QuestionsBody(
            questions: QuestionsHelpDataViewModel.medicalInformationData,
          ),
        ],
      ),
    );
  }
}
