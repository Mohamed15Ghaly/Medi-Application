import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:team/Features/chatBot/presentation/widgets/chat_button.dart';
import 'package:team/Features/chatBot/presentation/widgets/text_feild_chat.dart';
import 'package:team/Features/chatBot/view_model/cubit/chat_bot_operation_cubit.dart';

class ChatBotTextFelid extends StatefulWidget {
  const ChatBotTextFelid({
    super.key,
  });

  @override
  State<ChatBotTextFelid> createState() => _ChatBotTextFelidState();
}

class _ChatBotTextFelidState extends State<ChatBotTextFelid> {
  late AudioPlayer _audioPlayer, _audioPlayer2;
  late Record _audioRecorder;
  String _audioPath = "";
  _welcom() async {
    AudioPlayer w = AudioPlayer();
    await w.play(AssetSource("images/welcom.wav"));
  }

  @override
  void initState() {
    _welcom();
    _audioPlayer = AudioPlayer();
    _audioPlayer2 = AudioPlayer();
    _audioRecorder = Record();
    super.initState();
  }

  String _generateRandomId() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return List.generate(
      10,
      (index) => chars[random.nextInt(chars.length)],
      growable: false,
    ).join();
  }

  Future<void> _startRecording() async {
    try {
      debugPrint(
          '=========>>>>>>>>>>> RECORDING!!!!!!!!!!!!!!! <<<<<<===========');

      String filePath = await getApplicationDocumentsDirectory()
          .then((value) => '${value.path}/${_generateRandomId()}.wav');
      await _audioRecorder.start(
        encoder: AudioEncoder.wav,
        path: filePath,
      );
    } catch (e) {
      debugPrint('ERROR WHILE RECORDING: $e');
    }
  }

  Future _stopRecording() async {
    String? path = await _audioRecorder.stop();
    setState(() {
      _audioPath = path!;
    });
  }

  Future _play() async {
    Source source = UrlSource(_audioPath);
    await _audioPlayer.play(
      source,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBotOperationCubit, ChatBotOperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextFelidChat(),
            ChatBotButton(audioPlayer2: _audioPlayer2)
            // IconButton(onPressed: _startRecording, icon: const Icon(Icons.mic)),
            // IconButton(onPressed: _stopRecording, icon: const Icon(Icons.stop)),
            // IconButton(onPressed: _play, icon: const Icon(Icons.play_arrow)),
            // NewWidget()
          ],
        );
      },
    );
  }
}
