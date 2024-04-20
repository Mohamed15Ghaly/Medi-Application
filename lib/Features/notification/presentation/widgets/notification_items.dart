import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/notification/presentation/widgets/notification_item.dart';

class NotificationItems extends StatelessWidget {
  const NotificationItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: FittedBox(child: Image.asset(MediImage.notification)),
        ),
      ],
      body: ListView.separated(
        separatorBuilder: (context, index) => const Gap(10),
        shrinkWrap: true,
        itemCount: 50,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const NotificationItem(),
      ),
    );
  }
}

