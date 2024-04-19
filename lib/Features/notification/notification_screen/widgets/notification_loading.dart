import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/notification/notification_screen/widgets/shimmer_notification.dart';

class NotificationLoading extends StatelessWidget {
  const NotificationLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>  const ShimmerNotification(), itemCount: 50,
    );
  }
}


