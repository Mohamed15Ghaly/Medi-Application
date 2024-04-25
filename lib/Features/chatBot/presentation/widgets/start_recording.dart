import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';

class StartRecording extends StatelessWidget {
  const StartRecording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          children: [
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
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
            LottieBuilder.asset(
              "assets/images/yP1ojBaeGN.json",
            ),
          ],
        );
      },
    );
  }
}
