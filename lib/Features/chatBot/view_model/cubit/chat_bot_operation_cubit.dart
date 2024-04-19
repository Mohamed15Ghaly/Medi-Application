import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/chatBot/view_model/models/chat_bot_mode.dart';
import 'package:team/Features/chatBot/view_model/models/chta_bot_history.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/errors/exceptions.dart';

part 'chat_bot_operation_state.dart';

class ChatBotOperationCubit extends Cubit<ChatBotOperationState> {
  ChatBotOperationCubit(this.apiConsumer) : super(ChatBotOperationInitial());
  TextEditingController chatBotTextController = TextEditingController();
  List <ChatBotHistory> chatBotHistory = [];
  
  bool isFirstRequest = true;
  @override
  Future<void> close() {
    chatBotTextController.dispose();
    return super.close();
  }

  final ApiConsumer apiConsumer;
  // ChatBotModel? ans;
  void start() {
    if (chatBotTextController.text.isNotEmpty) {
      emit(ChatBotOperationStartTyping());
    }
  }

  void startRecording() {
    emit(ChatBotOperationStartRecording());
  }

  void stopRecording() {
    emit(ChatBotOperationEndRecording());
  }

  void sendRecording() {
    emit(ChatBotOperationStartTyping());
  }

  void startListening() {
    emit(ChatBotOperationStartListening());
  }

  void stopListening() {
    emit(ChatBotOperationPauseRecording());
  }

  void startTyping() async {
   
    try {
      final response = await apiConsumer.post(ApiUrl.chatBot, body: {
        ApiKey.msg: chatBotTextController.text.trim(),
      });

      ChatBotModel ans = ChatBotModel.fromJson(response);

      chatBotHistory.add(ChatBotHistory(
          question: chatBotTextController.text.trim(), answer: ans.botText));
      emit(ChatBotOperationTypingSuccess());
      isFirstRequest = false;
      chatBotTextController.clear();
    } on ServiceExceptions catch (e) {
      emit(ChatBotOperationFailure(
        error: e.errorMessageModel.errorMessage,
      ));
    }
  }
}
