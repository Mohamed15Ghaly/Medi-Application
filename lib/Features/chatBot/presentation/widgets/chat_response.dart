import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_bot_response.dart';
import 'package:team/Features/chatBot/presentation/widgets/user_response.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatResponse extends StatelessWidget {
  const ChatResponse({
    super.key,
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserResponse(
          question: question,
        ),
        Gap(context.height * .01),
        ChatBotResponse(
          answer: answer,
        ),
      ],
    );
  }
}
