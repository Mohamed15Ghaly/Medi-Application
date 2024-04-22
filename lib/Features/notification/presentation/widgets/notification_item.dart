import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        Get.snackbar(
          "Notification Title ",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          icon: const Icon(
            Icons.notification_important,
          ),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor:Colors.blue.shade50,
              child: Shimmer.fromColors(
                baseColor: Colors.blue.shade300,
                highlightColor: Colors.blue.shade500,
                child: const Icon(
                  Icons.notifications_active,
                  color: MediColors.primaryColor,
                  size: 25,
                ),
              )),
                        Gap(context.height * .01),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notification Title",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: MediColors.primaryColor,
                    fontSize:
                        getResponseFontSize(context: context, fontSize: 16),
                  ),
                ),
                              Gap(context.height * .005),

                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    color: MediColors.primaryColor,
                    fontSize: getResponseFontSize(
                      context: context,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
