import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';

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
        title: Text(question),
        childrenPadding: const EdgeInsets.all(8),
        children: [
          Text(
            answer,
            style: const TextStyle(color: MediColors.fourthColor),
          ),
        ]);
  }
}