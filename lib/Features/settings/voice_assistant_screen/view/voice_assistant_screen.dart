import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/cubits/cubit/is_selected_cubit.dart';
import 'package:team/Features/settings/voice_assistant_screen/widgets/voice_assistant_screen_body.dart';

class VoiceAssistantScreen extends StatelessWidget {
  const VoiceAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsSelectedCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Voice assistant'),
          centerTitle: true,
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(height: context.height/2,MediAssets.voiceAssistant,),
                    FittedBox(
                      child: Text(
                        "How to use the Voice assistant ?",
                        style: TextStyle(
                          fontSize: GetResponseFontSize(context: context, fontsize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const Gap(5),
                    Text(
                      "To be able to use the voice assistant feature you must pronounce the command correctly"
                      "listen to the command carefully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: GetResponseFontSize(context: context, fontsize: 14),
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            )
          ],
          body: const VoiceAssistantBody(),
        ),
      ),
    );
  }
}




