import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/chatBot/presentation/view/chat_screen.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/Features/settings/presentation/views/help_screen.dart';
import 'package:team/Features/settings/presentation/views/settings_screen.dart';
import 'package:team/Features/settings/presentation/views/voice_assistant_screen.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/Features/notification/presentation/views/notification_screen.dart';
import 'package:team/Features/settings/presentation/views/profile_screen.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => BlocProvider.of<IndexScreenCubit>(context)
              .drawerController
              .close!(),
          title: const DefaultText(
            txt: 'Home',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.home, color: MediColors.primaryColor),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const ProfileScreen()),
          title: const DefaultText(
            txt: 'Profile',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.person_2, color: MediColors.primaryColor
              // color: Colors.green,
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const NotificationScreen()),
          title: const DefaultText(
            txt: 'Notifications',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.notifications_active,
              color: MediColors.primaryColor
              // color: Colors.amber,
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const ChatScreen()),
          title: const DefaultText(
            txt: 'Chat',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.chat, color: MediColors.primaryColor
              // color: Colors.tealAccent
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const VoiceAssistantScreen()),
          title: const DefaultText(
            txt: 'Voice Assistant',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.mic, color: MediColors.primaryColor
              // color: Colors.purple,
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const SettingsScreen()),
          title: const DefaultText(
            txt: 'Settings',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.settings, color: MediColors.primaryColor),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const HelpScreen()),
          title: const DefaultText(
            txt: 'Help',
            color: MediColors.primaryColor,
          ),
          leading: const Icon(Icons.help_outline, color: MediColors.primaryColor
              // color: Colors.yellow,
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.scale,
            title: "Logout",
            desc: "Are you sure you want to logout?",
            btnOkOnPress: () {
              Get.offAll(() => const LoginScreen());
            },
            btnCancelOnPress: () {},
            btnOkColor: MediColors.primaryColor,
            btnCancelColor: MediColors.primaryColor,
          ).show(),
          title: const DefaultText(
            txt: 'Logout',
            color: Colors.red,
          ),
          leading: const Icon(
            Icons.logout,
            color: Colors.red,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.red),
        )
      ],
    );
  }
}
