import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/chatBot/presentation/view/chat_screen.dart';
import 'package:team/cubits/cubit/cubit/recorder_cubit.dart';
import 'package:team/Features/settings/voice_assistant_screen/view/voice_assistant_screen.dart';
import 'package:team/Features/settings/profile_screen/view/profile_screen.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecorderCubit, RecorderState>(
      listener: (context, state) {},
      builder: (context, state) {
        return FloatingActionButton(
            onPressed: () {
              if (BlocProvider.of<RecorderCubit>(context).i == 2) {
                print("--------");
                print(BlocProvider.of<RecorderCubit>(context).recognizedText);
                print("--------");
                BlocProvider.of<RecorderCubit>(context).recognizedText == "محمد"
                    ? Get.to(() => const ProfileScreen())
                    : Get.showSnackbar(GetSnackBar(
                        messageText: const Text(
                            "You must pronounce it correctly",
                            style: TextStyle(color: Colors.blue)),
                        snackPosition: SnackPosition.TOP,
                        duration: const Duration(seconds: 5),
                        icon: const Icon(Icons.error, color: Colors.blue),
                        mainButton: TextButton(
                          onPressed: () {
                            Get.to(() => const VoiceAssistantScreen());
                          },
                          child: const Text(
                            "view",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        backgroundColor: Colors.white,
                        borderRadius: 10,
                        snackStyle: SnackStyle.FLOATING,
                        leftBarIndicatorColor: Colors.blue,
                        showProgressIndicator: true,
                        titleText: const Text("Wraring",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ));

                BlocProvider.of<RecorderCubit>(context).recognizedText == "عمرو"
                    ? Get.to(() => const ChatScreen())
                    : Text("data");

                BlocProvider.of<RecorderCubit>(context).recognizedTextClear();
              } else {
                BlocProvider.of<RecorderCubit>(context).recorder();
              }
            },
            child: BlocProvider.of<RecorderCubit>(context).i == 0
                ? const Icon(Icons.mic)
                : BlocProvider.of<RecorderCubit>(context).i == 2
                    ? const Icon(Icons.done)
                    : const Icon(Icons.stop));
      },
    );
  }
}
