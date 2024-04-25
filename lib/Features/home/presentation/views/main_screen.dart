import 'package:flutter/material.dart';
import 'package:team/Features/home/presentation/home_cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/home/presentation/widgets/menu_screen.dart';
import 'package:team/Features/home/presentation/views/home_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
      controller: BlocProvider.of<HomeCubit>(context).drawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const HomeScreen(),
      borderRadius: 24.0,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      angle: 0.0,
      style: DrawerStyle.defaultStyle,
      slideWidth: MediaQuery.of(context).size.width - 60.0,
    ));
  }
}
