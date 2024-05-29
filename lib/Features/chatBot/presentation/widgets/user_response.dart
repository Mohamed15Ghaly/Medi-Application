import 'package:animate_do/animate_do.dart';
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
import 'package:team/core/utils/response_font_size.dart';

class UserResponse extends StatelessWidget {
  const UserResponse({
    super.key,
    required this.question,
  });
  final String question;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1000),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              flex: 3,
              child: CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: question));
                      },
                      trailingIcon: CupertinoIcons.doc,
                      child: const Text("Copy")),
                  CupertinoContextMenuAction(
                      onPressed: () {
                        ChatBotFeatures().listening(text: question);
                      },
                      trailingIcon: CupertinoIcons.speaker_1,
                      child: const Text("Listen")),
                ],
                child: Container(
                  constraints: BoxConstraints(maxWidth: context.width),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: MediColors.fourthColor.withOpacity(.25),
                  ),
                  child: Text(
                    question,
                    style: TextStyle(
                      color: MediColors.thirdColor,
                      decoration: TextDecoration.none,
                      fontSize: getResponseFontSize(
                        context: context,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Gap(context.height * .005),
            Flexible(
              child: FittedBox(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: CachedNetworkImageProvider(
                    CacheHelper().getData(key: ApiKey.profilePhoto),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
