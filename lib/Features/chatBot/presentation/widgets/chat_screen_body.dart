import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_content.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_text_felid.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ChatScreenBody extends StatefulWidget {
  const ChatScreenBody({
    super.key,
  });

  @override
  State<ChatScreenBody> createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is ChatBotOperationLoading,
          color: MediColors.thirdColor.withOpacity(.25),
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Medi Chat"),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: context.height,
                  width: context.width,
                  child: Column(
                    children: [
                      const ChatContent(),
                      Gap(context.height * .01),
                      const Divider(),
                      const ChatBotTextFelid(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
