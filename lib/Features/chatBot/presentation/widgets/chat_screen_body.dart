import 'package:flutter/material.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_content.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_text_feild.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medi Chat"),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ChatContent(),
              Divider(),
              ChatBotTextFelid(),
            ],
          ),
        ),
      ),
    );
  }
}
