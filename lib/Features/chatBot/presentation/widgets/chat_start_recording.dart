import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatStartRecording extends StatelessWidget {
  const ChatStartRecording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
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
                    color: MediColors.primaryColor,
                    onPressed: () {},
                    icon: Icon(
                      state is ChatBotOperationStartListening
                          ? Icons.play_arrow
                          : Icons.pause,
                    ))
                :  Gap(context.height * .005),
          ],
        );
      },
    );
  }
}
