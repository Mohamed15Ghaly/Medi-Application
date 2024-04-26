import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_response.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatHistoryBody extends StatefulWidget {
  const ChatHistoryBody({
    super.key,
  });

  @override
  State<ChatHistoryBody> createState() => _ChatHistoryBodyState();
}

class _ChatHistoryBodyState extends State<ChatHistoryBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            controller: BlocProvider.of<ChatBotOperationCubit>(context)
                .scrollController,
            itemBuilder: (context, index) => ChatResponse(
                question: BlocProvider.of<ChatBotOperationCubit>(context)
                    .chatBotHistory[index]
                    .question,
                answer: BlocProvider.of<ChatBotOperationCubit>(context)
                    .chatBotHistory[index]
                    .answer),
            separatorBuilder: (context, index) => Gap(context.height * .01),
            itemCount: BlocProvider.of<ChatBotOperationCubit>(context)
                .chatBotHistory
                .length,
          ),
        );
      },
    );
  }
}
