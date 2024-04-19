part of 'chat_bot_operation_cubit.dart';

sealed class ChatBotOperationState extends Equatable {
  const ChatBotOperationState();

  @override
  List<Object> get props => [];
}

final class ChatBotOperationInitial extends ChatBotOperationState {}
final class ChatBotOperationStartTyping extends ChatBotOperationState {}
final class ChatBotOperationStartRecording extends ChatBotOperationState {}
final class ChatBotOperationEndRecording extends ChatBotOperationState {}
final class ChatBotOperationPauseRecording extends ChatBotOperationState {}
final class ChatBotOperationStartListening extends ChatBotOperationState {}
final class ChatBotOperationTypingSuccess extends ChatBotOperationState {
}
final class ChatBotOperationChatBotLoading  extends ChatBotOperationState {}

final class ChatBotOperationFailure extends ChatBotOperationState {
  final String error;
  const ChatBotOperationFailure({required this.error});
}

