import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:team/Features/chatBot/view_model/cubit/chat_bot_operation_cubit.dart';

class ChatStartRecording extends StatelessWidget {
  const ChatStartRecording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {
  
      },
      builder: (context, state) {
        return Row(
          children: [
            state is ChatBotOperationEndRecording
                ? IconButton(
                    iconSize: 25,
                    color: Colors.red,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                    ))
                : LottieBuilder.asset(
                    "assets/images/yP1ojBaeGN.json",
                  ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            state is ChatBotOperationEndRecording
                ? IconButton(
                    iconSize: 25,
                    color: Colors.blue,
                    onPressed: () {},
                    icon: Icon(
                      state is ChatBotOperationStartListening
                          ? Icons.play_arrow
                          : Icons.pause,
                    ))
                : const Gap(5),
          ],
        );
      },
    );
  }
}
