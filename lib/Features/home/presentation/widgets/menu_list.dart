import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/chatBot/presentation/view/chat_screen.dart';
import 'package:team/Features/home/presentation/home_cubit/home_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/Features/app_menu/presentation/views/help_screen.dart';
import 'package:team/Features/app_menu/presentation/views/settings_screen.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/Features/app_menu/presentation/views/profile_screen.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: () =>
              BlocProvider.of<HomeCubit>(context).drawerController.close!(),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Home',
              color: MediColors.primaryColor,
            ),
          ),
          leading: const Icon(Icons.home, color: MediColors.primaryColor),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const ProfileScreen()),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Profile',
              color: MediColors.primaryColor,
            ),
          ),
          leading: const Icon(Icons.person_2, color: MediColors.primaryColor
              // color: Colors.green,
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const ChatScreen()),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Medi Chat',
              color: MediColors.primaryColor,
            ),
          ),
          leading: const Icon(Icons.chat, color: MediColors.primaryColor
              // color: Colors.tealAccent
              ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const SettingsScreen()),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Settings',
              color: MediColors.primaryColor,
            ),
          ),
          leading: const Icon(Icons.settings, color: MediColors.primaryColor),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () => Get.to(() => const HelpScreen()),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Help',
              color: MediColors.primaryColor,
            ),
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
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultText(
              txt: 'Logout',
              color: Colors.red,
            ),
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
