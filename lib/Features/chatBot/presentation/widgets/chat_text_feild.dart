import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_button.dart';
import 'package:team/Features/chatBot/presentation/widgets/start_recording.dart';
import 'package:team/Features/chatBot/presentation/widgets/text_feild_chat.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';

class ChatBotTextFelid extends StatefulWidget {
  const ChatBotTextFelid({
    super.key,
  });

  @override
  State<ChatBotTextFelid> createState() => _ChatBotTextFelidState();
}

class _ChatBotTextFelidState extends State<ChatBotTextFelid> {
  welcome() async {
    AudioPlayer w = AudioPlayer();
    await w.play(AssetSource("images/welcom.wav"));
  }

  @override
  void initState() {
    welcome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            state is ChatBotOperationStartRecording
                ? const StartRecording()
                : const TextFelidChat(),
            const ChatBotButton(),
          ],
        );
      },
    );
  }
}
