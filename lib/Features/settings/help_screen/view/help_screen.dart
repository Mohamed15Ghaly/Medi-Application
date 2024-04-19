import 'package:flutter/material.dart';
import 'package:team/Features/settings/help_screen/widgets/question.dart';
import 'package:team/Features/settings/help_screen/widgets/follow_us.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Help',
              ),
              Tab(
                text: 'Follow Us',
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              Questions(),
              FollowUs(),
            ],
          ),
        ),
      ),
    );
  }
}
