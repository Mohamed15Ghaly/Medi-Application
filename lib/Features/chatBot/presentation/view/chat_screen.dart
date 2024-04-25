import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_screen_body.dart';
import 'package:team/Features/chatBot/presentation/cubit/chat_bot_operation_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';
import 'package:team/core/utils/medi_image.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Scaffold(
                    body: SafeArea(
                      child: Center(
                        child: Lottie.asset(MediImage.chatBotSplash),
                      ),
                    ),
                  )
                : BlocProvider(
                    create: (context) =>
                        ChatBotOperationCubit(DioConsumer(dio: Dio())),
                    child: const ChatScreenBody(),
                  ));
  }
}
