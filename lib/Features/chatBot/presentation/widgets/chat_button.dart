import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';

class ChatBotButton extends StatefulWidget {
  const ChatBotButton({
    super.key,
  });

  @override
  State<ChatBotButton> createState() => _ChatBotButtonState();
}

class _ChatBotButtonState extends State<ChatBotButton> {
  late AudioPlayer _audioPlayer2;

  @override
  void initState() {
    _audioPlayer2 = AudioPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AvatarGlow(
          animate: state is ChatBotOperationStartRecording ? true : false,
          glowRadiusFactor: .2,
          glowColor: MediColors.primaryColor,
          child: MaterialButton(
            padding: const EdgeInsets.all(10),
            height: 60,
            color: MediColors.primaryColor,
            shape: const CircleBorder(),
            onPressed: () async {
              _audioPlayer2.play(
                AssetSource(
                  "images/send.mp3",
                ),
              );
              if ((state is ChatBotOperationInitial ||
                      state is ChatBotOperationSuccess) &&
                  state is! ChatBotOperationStartTyping) {
                BlocProvider.of<ChatBotOperationCubit>(context)
                    .startRecording();
              } else if (state is ChatBotOperationStartRecording) {
                BlocProvider.of<ChatBotOperationCubit>(context).stopRecording();
              } else if (state is ChatBotOperationStartTyping) {
                BlocProvider.of<ChatBotOperationCubit>(context).send();
              } else {
                BlocProvider.of<ChatBotOperationCubit>(context).sendRecording();
              }
            },
            child: Icon(
                state is ChatBotOperationStartRecording
                    ? Icons.stop
                    : state is ChatBotOperationStartTyping ||
                            state is ChatBotOperationStopRecording
                        ? Icons.send
                        : Icons.mic,
                color: MediColors.secondaryColor),
          ),
        );
      },
    );
  }
}
