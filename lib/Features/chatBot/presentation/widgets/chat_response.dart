import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_bot_response.dart';
import 'package:team/Features/chatBot/presentation/widgets/user_response.dart';
import 'package:team/core/utils/medi_media_query.dart';

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

class _ChatResponseState extends State<ChatResponse>
    with SingleTickerProviderStateMixin {
  late AnimationController userAnimationController;
  late Animation<Offset> userSlideAnimation;

  @override
  void initState() {
    super.initState();
    userAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    userSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 0),
    ).animate(userAnimationController);
    userAnimationController.forward();
  }

  @override
  void dispose() {
    userAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: userAnimationController,
      builder: (context, child) => SlideTransition(
        position: userSlideAnimation,
        child: Column(
          children: [
            UserResponse(
              question: widget.question,
            ),
            Gap(context.height * .01),
            ChatBotResponse(
              answer: widget.answer,
            ),
          ],
        ),
      ),
    );
  }
}
