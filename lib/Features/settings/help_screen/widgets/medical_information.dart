import 'package:flutter/material.dart';
import 'package:team/Features/settings/help_screen/widgets/question_data.dart';
import 'package:team/Features/settings/help_screen/widgets/questions_body.dart';

class MedicalInformation extends StatelessWidget {
  const MedicalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Questions-cuate (1).png"),
          const QuestionsBody(
            questions: QuestionsData.medicalInformationData,
          ),
        ],
      ),
    );
  }
}
