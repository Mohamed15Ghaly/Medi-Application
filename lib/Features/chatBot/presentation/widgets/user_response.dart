import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/chatBot/data/models/chat_bot_features.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';

class UserResponse extends StatefulWidget {
  const UserResponse({
    super.key,
    required this.question,
  });
  final String question;
  @override
  State<UserResponse> createState() => _UserState();
}

class _UserState extends State<UserResponse>
    with SingleTickerProviderStateMixin {
  late AnimationController userAnimationController;
  late Animation<Offset> userSlideAnimation;

  @override
  void initState() {
    super.initState();
    userAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    userSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(userAnimationController);
    userAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: userAnimationController,
      builder: (context, child) => SlideTransition(
        position: userSlideAnimation,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: widget.question));
                      },
                      trailingIcon: CupertinoIcons.doc,
                      child: const Text("Copy")),
                  CupertinoContextMenuAction(
                      onPressed: () {
                        ChatBotFeatures().listening(text: widget.question);
                      },
                      trailingIcon: CupertinoIcons.speaker_1,
                      child: const Text("Listen")),
                ],
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: MediColors.fourthColor.withOpacity(.25),
                  ),
                  child: Text(widget.question),
                ),
              ),
              Gap(context.height * .005),
              CircleAvatar(
                radius: 20,
                backgroundImage: CachedNetworkImageProvider(
                  CacheHelper().getData(key: ApiKey.profilePhoto),
                ),
              ),
            ]),
      ),
    );
  }
}
