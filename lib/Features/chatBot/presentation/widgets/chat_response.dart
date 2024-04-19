import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_bot_response.dart';
import 'package:team/Features/chatBot/presentation/widgets/user_response.dart';

class ChatResponse extends StatefulWidget {
  const ChatResponse({
    super.key,
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;

  @override
  State<ChatResponse> createState() => _ChatResponseState();
}

class _ChatResponseState extends State<ChatResponse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserResponse(
          question: widget.question,
        ),
        const Gap(10),
        ChatBotResponse(
          answer: widget.answer,
        ),
      ],
    );
  }
}
