import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/voice_assistant_screen/page_data.dart';
import 'package:team/Features/settings/voice_assistant_screen/widgets/voice_assisstant_item.dart';

class VoiceAssistantBody extends StatelessWidget {
  const VoiceAssistantBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contextX, index) => ListBuilderItem(
              index: index,
              iconPage: PagesData.pagesData[index]["pageIcon"],
              text: PagesData.pagesData[index]["pageName"],
            ),
        separatorBuilder: (context, index) => const Gap(5),
        itemCount: PagesData.pagesData.length);
  }
}