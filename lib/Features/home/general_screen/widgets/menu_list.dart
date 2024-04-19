import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/chatBot/presentation/view/chat_screen.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/Features/settings/help_screen/view/help_screen.dart';
import 'package:team/Features/settings/settings_screen/view/settings_screen.dart';
import 'package:team/Features/settings/voice_assistant_screen/view/voice_assistant_screen.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/Features/notification/notification_screen/view/notification_screen.dart';
import 'package:team/Features/settings/profile_screen/view/profile_screen.dart';
import '../../../../components/response_font_size.dart';

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
          title: const DefaultText(txt: 'Home',color: Colors.blue,),
          leading: const Icon(Icons.home, color: Colors.blue),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const ProfileScreen()),
          title:const DefaultText(txt: 'Profile',color: Colors.blue,),
          leading: const Icon(Icons.person_2, color: Colors.blue
              // color: Colors.green,
              ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const NotificationScreen()),
          title: const DefaultText(txt: 'Notifications',color: Colors.blue,),
          leading: const Icon(Icons.notifications_active, color: Colors.blue
              // color: Colors.amber,
              ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const ChatScreen()),
          title:const DefaultText(txt: 'Chat',color: Colors.blue,),
          leading: const Icon(Icons.chat, color: Colors.blue
              // color: Colors.tealAccent
              ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const VoiceAssistantScreen()),
          title: const DefaultText(txt: 'Voice Assistant',color: Colors.blue,),
          leading: const Icon(Icons.mic, color: Colors.blue
              // color: Colors.purple,
              ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const SettingsScreen()),
          title: const DefaultText(txt: 'Settings',color: Colors.blue,),
          leading: const Icon(Icons.settings, color: Colors.blue),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const HelpScreen()),
          title: const DefaultText(txt: 'Help',color: Colors.blue,),
          leading: const Icon(Icons.help_outline, color: Colors.blue
              // color: Colors.yellow,
              ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => showCupertinoDialog(
              context: context,
              builder: (builder) => CupertinoAlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure you want to logout'),
                      actions: [
                        CupertinoDialogAction(
                          isDestructiveAction: true,
                          child: const Text('Cancel'),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        CupertinoDialogAction(
                          child: const Text('Logout'),
                          onPressed: () {
                            Get.offAll(() => const LoginScreen());
                          },
                        )
                      ])),
          title: const DefaultText(txt: 'Logout',color: Colors.red,),
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
