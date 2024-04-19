import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_history_body.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_initial_state.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_loading.dart';
import 'package:team/Features/chatBot/view_model/cubit/chat_bot_operation_cubit.dart';

class ChatContent extends StatefulWidget {
  const ChatContent({
    super.key,
  });

  @override
  State<ChatContent> createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ChatBotOperationInitial) {
          return const ChatInitialState();
        } else if (state is ChatBotOperationChatBotLoading) {
          return const ChatLoading();
        } else if (state is ChatBotOperationTypingSuccess ||
            BlocProvider.of<ChatBotOperationCubit>(context).isFirstRequest ==
                false) {
          return const ChatHistoryBody();
        } else {
          return const ChatInitialState();
        }
      },
    );
  }
}
