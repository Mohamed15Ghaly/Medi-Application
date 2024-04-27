import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_button.dart';
import 'package:team/Features/chatBot/presentation/widgets/start_recording.dart';
import 'package:team/Features/chatBot/presentation/widgets/text_felid_chat.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatBotTextFelid extends StatelessWidget {
  const ChatBotTextFelid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: context.width,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                state is ChatBotOperationStartRecording
                    ? const StartRecording()
                    : const TextFelidChat(),
                 const ChatBotButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
