import 'package:flutter/material.dart';
import 'package:team/Features/settings/help_screen/widgets/question_data.dart';
import 'package:team/Features/settings/help_screen/widgets/questions_body.dart';

class PrivacyPolicyCondition extends StatelessWidget {
  const PrivacyPolicyCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Privacy policy-amico.png"),
          const QuestionsBody(
            questions: QuestionsData.privacyPolicyConditions,
          ),
        ],
      ),
    );
  }
}
