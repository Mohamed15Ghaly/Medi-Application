import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/notification/presentation/widgets/shimmer_notification.dart';
import 'package:team/core/utils/medi_media_query.dart';

class NotificationLoading extends StatelessWidget {
  const NotificationLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) =>               Gap(context.height * .01),

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>  const ShimmerNotification(), itemCount: 50,
    );
  }
}


