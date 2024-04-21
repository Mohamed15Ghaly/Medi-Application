import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/core/components/floating.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import '../widgets/home_screen_body.dart';
import '../widgets/notification_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      appBar: AppBar(
        title: Image.asset(
          MediImage.appLogo,
          width: 30,
          height: 30,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            BlocProvider.of<IndexScreenCubit>(context).drawer();
          },
          icon: const Icon(Icons.menu),
        ),
        leadingWidth: 75,
        actions: const [
          NotificationButton(),
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
