import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/chatBot/view_model/cubit/chat_bot_operation_cubit.dart';

class TextFelidChat extends StatelessWidget {
  const TextFelidChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<ChatBotOperationCubit>(context).start();
        },
        
        controller: BlocProvider.of<ChatBotOperationCubit>(context)
            .chatBotTextController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: 'Type a message',
          prefixIcon: Icon(Icons.keyboard_rounded),
          hintStyle: TextStyle(color: Colors.grey),
          labelText: 'Start new chat',
          labelStyle: TextStyle(color: Colors.blue),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
