class ChatBotModel {
  final String userText;
  final String botText;
  ChatBotModel({required this.userText, required this.botText});

  factory ChatBotModel.fromJson(Map<String, dynamic> json) {
    return ChatBotModel(
      userText: json['user_text'],
      botText: json['response'],
    );
  }
}
