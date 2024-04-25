import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/app_menu/presentation/widgets/attention.dart';
import 'package:team/Features/app_menu/presentation/widgets/reset_password.dart';
import 'package:team/Features/app_menu/presentation/widgets/delete_account.dart';
import 'package:team/Features/app_menu/presentation/widgets/rate.dart';
import 'package:team/core/utils/medi_media_query.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(fit: BoxFit.cover,width: context.width,height: context.height/2,MediImage.settings),
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
