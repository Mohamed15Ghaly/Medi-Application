import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';
import '../../../notification/presentation/views/notification_screen.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Get.to(() => const NotificationScreen());
        },
        icon: Stack(
          alignment: Alignment.topRight,
          children: [
            const Icon(Icons.notifications_active),
            const CircleAvatar(
              radius: 6,
              backgroundColor: MediColors.primaryColor,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: MediColors.secondaryColor,
              child: Text(
                '5',
                style: TextStyle(
                  color: MediColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getResponseFontSize(context: context, fontSize: 7),
                ),
              ),
            )
          ],
        ));
  }
}
