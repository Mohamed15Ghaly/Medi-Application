import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/Features/app_menu/data/view_model/question_data.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/questions_body.dart';
import 'package:team/core/utils/medi_image.dart';

class PrivacyPolicyCondition extends StatelessWidget {
  const PrivacyPolicyCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(height: context.height/2,MediImage.privacyPolicyCondition),
          const QuestionsBody(
            questions: QuestionsHelpDataViewModel.privacyPolicyConditions,
          ),
        ],
      ),
    );
  }
}
