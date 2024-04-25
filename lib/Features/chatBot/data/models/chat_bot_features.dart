import 'package:flutter_tts/flutter_tts.dart';

class ChatBotFeatures{
  final FlutterTts flutterTts = FlutterTts();

  void listening({required String text}) async {
    await flutterTts.setPitch(1.0);
    await flutterTts.setLanguage("EN - US");
    await flutterTts.speak(text);
    
  }
}