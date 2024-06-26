import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/attention.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/reset_password.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/delete_account.dart';
import 'package:team/Features/app_menu/presentation/widgets/settings_screen/rate.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(MediImage.settings),
          const Divider(),
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
