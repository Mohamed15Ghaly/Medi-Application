import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/Features/notification/notification_screen/widgets/notification_item.dart';

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
          child: FittedBox(child: Image.asset(MediAssets.notification)),
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

