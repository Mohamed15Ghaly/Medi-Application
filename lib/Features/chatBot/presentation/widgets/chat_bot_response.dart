import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_features.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatBotResponse extends StatelessWidget {
  const ChatBotResponse({
    super.key,
    required this.answer,
  });
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: MediColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(MediImage.chatBotPhoto),
          ),
        ),
        Gap(context.height * .005),
        CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: answer));
                },
                trailingIcon: CupertinoIcons.doc,
                child: const Text("Copy")),
            CupertinoContextMenuAction(
                onPressed: () {
                  ChatBotFeatures().listening(text: answer);
                },
                trailingIcon: CupertinoIcons.speaker_1,
                child: const Text("Listen")),
          ],
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: MediColors.primaryColor,
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      answer,
                      speed: const Duration(milliseconds: 150),
                      textStyle:
                          const TextStyle(color: MediColors.secondaryColor),
                    )
                  ],
                  isRepeatingAnimation: false,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: false,
                  repeatForever: false,
                ),
              )),
        ),
      ],
    );
  }
}
