import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/view_model/page_data.dart';
import 'package:team/Features/settings/presentation/widgets/voice_assisstant_item.dart';
import 'package:team/core/utils/medi_media_query.dart';

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
        separatorBuilder: (context, index) =>               Gap(context.height * .005),

        itemCount: PagesData.pagesData.length);
  }
}