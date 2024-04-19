import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/chatBot/view_model/cubit/chat_bot_operation_cubit.dart';

class ChatBotButton extends StatelessWidget {
  const ChatBotButton({
    super.key,
    required AudioPlayer audioPlayer2,
  }) : _audioPlayer2 = audioPlayer2;

  final AudioPlayer _audioPlayer2;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AvatarGlow(
          animate: state is ChatBotOperationStartRecording ? true : false,
          glowRadiusFactor: .2,
          glowColor: Colors.blue,
          child: MaterialButton(
            padding: const EdgeInsets.all(10),
            height: 60,
            color: Colors.blue,
            shape: const CircleBorder(),
            onPressed: () async {
              if (state is ChatBotOperationStartRecording) {
                BlocProvider.of<ChatBotOperationCubit>(context).stopRecording();
              } else if (state is ChatBotOperationStartTyping) {
                BlocProvider.of<ChatBotOperationCubit>(context).startTyping();
                _audioPlayer2.play(
                  AssetSource(
                    "images/send.mp3",
                  ),
                );
              } else if (state is ChatBotOperationStartTyping) {
              } else {
                BlocProvider.of<ChatBotOperationCubit>(context).sendRecording();
                ;
              }
            },
            child: Icon(
                state is ChatBotOperationStartRecording
                    ? Icons.stop
                    : state is ChatBotOperationStartTyping
                        ? Icons.send
                        : Icons.mic,
                color: Colors.white),
          ),
        );
      },
    );
  }
}
