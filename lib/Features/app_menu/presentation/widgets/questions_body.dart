import 'package:flutter/material.dart';
import 'package:team/Features/app_menu/presentation/widgets/questions_item.dart';

class QuestionsBody extends StatelessWidget {
  const QuestionsBody({
    super.key,
    required this.questions,
  });
  final List<Map<String, String>> questions;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: questions.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => QuestionsItem(
              question: questions[index]["question"]!,
              answer: questions[index]["answer"]!,
            ));
  }
}
