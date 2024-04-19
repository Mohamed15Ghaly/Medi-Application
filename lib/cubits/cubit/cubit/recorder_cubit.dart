import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:speech_to_text/speech_to_text.dart' as m15g;

part 'recorder_state.dart';

class RecorderCubit extends Cubit<RecorderState> {
  RecorderCubit() : super(RecorderInitial());
  final m15g.SpeechToText _speech = m15g.SpeechToText();

  String recognizedText = "";
  bool isListening = false;
  bool get isRecording => recognizedText.isNotEmpty;
  int i = 0;
  void recorder() async {
    if (i == 0) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        i = 1;
        _speech.listen(onResult: (val) => recognizedText = val.recognizedWords);
      }
    } else {
      i = 2;
      _speech.stop();
      emit(RecorderInitial());
    }
    emit(RecorderSuccess());
  }


  void recognizedTextClear() {
    i = 0;
    emit(RecorderInitial());
  }

}
