import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_mode.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_history.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:record/record.dart';
import 'package:team/core/functions/upload_image_to_api.dart';
part 'chat_bot_operation_state.dart';

class ChatBotOperationCubit extends Cubit<ChatBotOperationState> {
  ChatBotOperationCubit(this.apiConsumer) : super(ChatBotOperationInitial());
  TextEditingController chatBotTextController = TextEditingController();
  List<ChatBotHistory> chatBotHistory = [];
  bool isFirstRequest = true;
  Record audioRecorder = Record();
  String audioPath = "";
  final ScrollController scrollController = ScrollController();

  scrollToBottom() {
    if (scrollController.hasClients) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut);
    }
  }

  String generateRandomId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return List.generate(
      10,
      (index) => chars[random.nextInt(chars.length)],
      growable: false,
    ).join();
  }

  Future<void> startRecording() async {
    emit(ChatBotOperationStartRecording());
    if (await audioRecorder.hasPermission()) {
      try {
        debugPrint(
            '=========>>>>>>>>>>> RECORDING!!!!!!!!!!!!!!! <<<<<<===========');

        String filePath = await getApplicationDocumentsDirectory()
            .then((value) => '${value.path}/${generateRandomId()}.wav');
        await audioRecorder.start(
          encoder: AudioEncoder.wav,
          path: filePath,
        );
      } catch (e) {
        debugPrint('ERROR WHILE RECORDING: $e');
      }
    }
  }

  Future stopRecording() async {
    String? path = await audioRecorder.stop();
    audioPath = path!;
    emit(ChatBotOperationLoading());
    try {
      final response = await apiConsumer.post(
          "https://web-production-be4b5.up.railway.app/medi_voice",
          isFormData: true,
          body: {"file": await uploadToApi(audioPath)});
      ChatBotModel ans = ChatBotModel.fromJson(response);

      chatBotHistory
          .add(ChatBotHistory(question: ans.userText, answer: ans.botText));
      isFirstRequest = false;
      emit(ChatBotOperationSuccess());
    } catch (e) {
      emit(ChatBotOperationInitial());
    }
  }

  @override
  Future<void> close() {
    chatBotTextController.dispose();
    return super.close();
  }

  final ApiConsumer apiConsumer;
  void start() {
    if (chatBotTextController.text.isNotEmpty) {
      emit(ChatBotOperationStartTyping());
    } else {
      emit(ChatBotOperationInitial());
    }
  }

  void sendRecording() {
    emit(ChatBotOperationStartTyping());
  }

  void send() async {
    emit(ChatBotOperationLoading());
    try {
      final response = await apiConsumer.post(ApiUrl.chatBot, body: {
        ApiKey.msg: chatBotTextController.text.trim(),
      });

      ChatBotModel ans = ChatBotModel.fromJson(response);

      chatBotHistory.add(ChatBotHistory(
          question: chatBotTextController.text.trim(), answer: ans.botText));
      emit(ChatBotOperationSuccess());
      scrollToBottom();
      isFirstRequest = false;
      chatBotTextController.clear();
    } catch (e) {
      emit(ChatBotOperationInitial());
    }
  }
}
