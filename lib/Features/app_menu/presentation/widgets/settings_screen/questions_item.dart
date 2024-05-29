import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';

import '../../../../../core/utils/response_font_size.dart';

class QuestionsItem extends StatelessWidget {
  const QuestionsItem({
    super.key,
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: DefaultText(
          txt: question,
          color: Colors.black,
        ),
        childrenPadding: const EdgeInsets.all(8),
        children: [
          BounceInDown(
            child: DefaultText(
              txt: answer,
              color: MediColors.fourthColor,
            ),
          ),
        ]);
  }
}
