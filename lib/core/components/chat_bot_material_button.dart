import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:team/Features/chatBot/presentation/view/chat_screen.dart';
import 'package:team/core/utils/medi_colors.dart';

class ChatBotMaterialButton extends StatelessWidget {
  const ChatBotMaterialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.to(() => const ChatScreen());
      },
      child: Shimmer.fromColors(
        baseColor: MediColors.secondaryColor,
        highlightColor: MediColors.secondaryColor.withOpacity(.5),
        period: const Duration(seconds: 2),
        child: const Text(
          'Medi Chat ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
