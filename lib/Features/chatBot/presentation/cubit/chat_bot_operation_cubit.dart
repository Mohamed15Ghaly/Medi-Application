import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_history.dart';
import 'package:team/Features/chatBot/data/repository/chat_bot_repository.dart';
import 'package:record/record.dart';
import 'package:team/core/functions/generateRandomId.dart';
part 'chat_bot_operation_state.dart';

class ChatBotOperationCubit extends Cubit<ChatBotOperationState> {
  ChatBotOperationCubit({
    required this.chatBotRepository,
  }) : super(ChatBotOperationInitial());
  TextEditingController chatBotTextController = TextEditingController();
  List<ChatBotHistory> chatBotHistory = [];
  bool isFirstRequest = true;
  Record audioRecorder = Record();
  String audioPath = "";
  final ScrollController scrollController = ScrollController();
  final DataConnectionChecker networkConnectionChecker =
      DataConnectionChecker();
  final ChatBotRepository chatBotRepository;
  scrollToBottom() {
    if (scrollController.hasClients) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut);
    }
  }

  Future<void> startRecording() async {
    if (await networkConnectionChecker.hasConnection) {
      if (await audioRecorder.hasPermission()) {
        emit(ChatBotOperationStartRecording());
        String filePath = await getApplicationDocumentsDirectory()
            .then((value) => '${value.path}/${generateRandomId()}.wav');
        await audioRecorder.start(
          encoder: AudioEncoder.wav,
          path: filePath,
        );
      }
    }
  }

  Future sendRecording() async {
    if (await networkConnectionChecker.hasConnection) {
      String? path = await audioRecorder.stop();
      audioPath = path!;
      emit(ChatBotOperationLoading());
      final response =
          await chatBotRepository.sendRecording(audioPath: audioPath);
      response.fold((l) => emit(ChatBotOperationInitial()), (ans) {
        chatBotHistory
            .add(ChatBotHistory(question: ans.userText, answer: ans.botText));
        scrollToBottom();
        isFirstRequest = false;
        emit(ChatBotOperationSuccess());
      });
    } else {
      audioPath = "";
      emit(ChatBotOperationInitial());
    }
  }

  void start() {
    if (chatBotTextController.text.isNotEmpty) {
      emit(ChatBotOperationStartTyping());
    } else {
      emit(ChatBotOperationInitial());
    }
  }

  void send() async {
    if (await networkConnectionChecker.hasConnection) {
      emit(ChatBotOperationLoading());
      final response = await chatBotRepository.send(
        requestText: chatBotTextController.text.trim(),
      );
      response.fold((l) => emit(ChatBotOperationInitial()), (ans) {
        chatBotHistory.add(ChatBotHistory(
            question: chatBotTextController.text.trim(), answer: ans.botText));
        chatBotTextController.clear();
        emit(ChatBotOperationSuccess());
        scrollToBottom();
        isFirstRequest = false;
      });
    }
  }
}
