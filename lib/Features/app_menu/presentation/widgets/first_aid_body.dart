import 'package:flutter/material.dart';
import 'package:team/Features/app_menu/data/view_model/question_data.dart';
import 'package:team/Features/app_menu/presentation/widgets/questions_body.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class FirstAidBody extends StatelessWidget {
  const FirstAidBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(height:context.height/2,MediImage.firstAidBody),
          const QuestionsBody(
            questions: QuestionsHelpDataViewModel.firstAidData,
          ),
        ],
      ),
    );
  }
}
