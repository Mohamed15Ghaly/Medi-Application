import 'package:dartz/dartz.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_model.dart';
import 'package:team/core/api/api_consumer.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/api/api_url.dart';
import 'package:team/core/functions/upload_record_to_api.dart';

class ChatBotRepository {
  final ApiConsumer apiConsumer;

  ChatBotRepository({required this.apiConsumer});

  Future<Either<void, ChatBotModel>> send({
    required String requestText,
  }) async {
    try {
      final response = await apiConsumer
          .post(ApiUrl.chatBotText, body: {ApiKey.msg: requestText});
      return Right(ChatBotModel.fromJson(response));
    } catch (e) {
      return const Left(null);
    }
  }

  Future<Either<void, ChatBotModel>> sendRecording(
      {required String audioPath}) async {
    try {
      final response = await apiConsumer.post(ApiUrl.chatBotVoice,
          isFormData: true,
          body: {ApiKey.file: await uploadRecordToApi(audioPath)});
      return Right(ChatBotModel.fromJson(response));
    } catch (e) {
      return const Left(null);
    }
  }
}
