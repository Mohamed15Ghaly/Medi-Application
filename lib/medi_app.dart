import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:team/Features/settings/cubit/user_actions_cubit.dart';
import 'package:team/Features/splash_onBoarding/presentation/views/splash_screen.dart';
import 'package:team/core/api/dio_consumer.dart';
import 'package:team/core/utils/medi_strings.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/cubits/cubit/cubit/drawer_controller_cubit.dart';
import 'package:team/cubits/cubit/cubit/recorder_cubit.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';

class MediApplication extends StatelessWidget {
  const MediApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => IndexScreenCubit()),
          BlocProvider(create: (context) => ChangeModeCubit()),
          BlocProvider(create: (context) => RecorderCubit()),
          BlocProvider(create: (context) => DrawerControllerCubit()),
        
          BlocProvider(create: (context) => UserActionsCubit(DioConsumer(dio: Dio()))),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(fontFamily: MediStrings.appFont, useMaterial3: false),
          home: const SplashScreen(),
        ));
  }
}
