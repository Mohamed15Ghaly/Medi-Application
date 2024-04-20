import 'package:flutter/material.dart';
import 'package:team/Features/notification/presentation/widgets/notification_items.dart';
import 'package:team/Features/notification/presentation/widgets/notification_loading.dart';

class NavigationScreenBody extends StatelessWidget {
  const NavigationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 5)),
        builder: (context, AsyncSnapshot<dynamic> snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const NotificationLoading()
                : const NotificationItems());
  }
}


