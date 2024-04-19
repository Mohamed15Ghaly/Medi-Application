
import 'package:flutter/material.dart';
import 'package:team/Features/settings/help_screen/widgets/first_aid_body.dart';
import 'package:team/Features/settings/help_screen/widgets/medical_information.dart';
import 'package:team/Features/settings/help_screen/widgets/privacy_policy_condition.dart';

class Questions extends StatelessWidget {
  const Questions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          toolbarHeight: 10,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'FAQ'),
              Tab(text: 'Medical information'),
              Tab(text: 'Privacy'),
            ],
          ),
        ),
        body: const Padding(
          padding:  EdgeInsets.all(8.0),
          child: TabBarView(
            children:  [
              FirstAidBody(),
              MedicalInformation(),
              PrivacyPolicyCondition()
            ],
          ),
        ),
      ),
    );
  }
}



