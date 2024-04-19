import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/components/response_font_size.dart';
import '../../../notification/notification_screen/view/notification_screen.dart';

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
              backgroundColor: Colors.blue,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.white,
              child: Text(
                '5',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: GetResponseFontSize(context: context, fontsize: 7),
                ),
              ),
            )
          ],
        ));
  }
}
