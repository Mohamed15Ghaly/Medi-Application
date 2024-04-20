import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team/Features/settings/presentation/widgets/settings_screen_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          centerTitle: true,
        ),
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SettingsScreenBody(),
        )));
  }
}
