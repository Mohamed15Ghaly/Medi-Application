import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/utils/medi_image.dart';

class StartRecording extends StatelessWidget {
  const StartRecording({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
              LottieBuilder.asset(
                MediImage.chatBotSoundWave,
              ),
            ],
          ),
        );
      },
    );
  }
}
