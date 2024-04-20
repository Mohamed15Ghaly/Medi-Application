import 'package:flutter/material.dart';
import 'package:team/Features/notification/presentation/widgets/navigation_screen_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
          centerTitle: true,
        ),
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: NavigationScreenBody(),
        )));
  }
}
