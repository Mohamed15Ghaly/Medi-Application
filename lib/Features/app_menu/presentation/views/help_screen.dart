import 'package:flutter/material.dart';
import 'package:team/Features/app_menu/presentation/widgets/help_screen/question.dart';
import 'package:team/Features/app_menu/presentation/widgets/help_screen/follow_us.dart';

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
