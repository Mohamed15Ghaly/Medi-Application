import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/Features/settings/settings_screen/widgets/attention.dart';
import 'package:team/Features/settings/settings_screen/widgets/reset_password.dart';
import 'package:team/Features/settings/settings_screen/widgets/delete_account.dart';
import 'package:team/Features/settings/settings_screen/widgets/rate.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(MediAssets.settings),
          const ResetPassword(),
          const Divider(),
          const DeleteAccount(),
          const Divider(),
          const Attention(),
          const Divider(),
          const RateUs()
        ],
      ),
    );
  }
}
