import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/home/presentation/home_cubit/home_cubit.dart';
import 'package:team/core/components/chat_bot_material_button.dart';
import 'package:team/core/utils/medi_image.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          MediImage.appLogo,
          width: context.width * .075,
          height: context.width * .075,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<HomeCubit>(context).drawer();
          },
          icon: const Icon(Icons.menu),
        ),
        leadingWidth: context.width * .2,
        actions: const [
          ChatBotMaterialButton(),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HomeScreenBody(),
        ),
      ),
    );
  }
}
