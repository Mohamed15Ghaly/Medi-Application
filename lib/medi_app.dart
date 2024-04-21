import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';
import 'package:team/Features/settings/view_model/cubit/user_actions_cubit.dart';
import 'package:team/Features/splash_onBoarding/presentation/views/splash_screen.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_on_pressed_cubit.dart';
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
          BlocProvider(
            create: (context) => DiseasesCubit(DioConsumer(dio: Dio())),
          ),
          BlocProvider(create: (context) => UserOnPressedCubit()),
          BlocProvider(create: (context) => IndexScreenCubit()),
          BlocProvider(create: (context) => ChangeModeCubit()),
          BlocProvider(create: (context) => RecorderCubit()),
          BlocProvider(create: (context) => DrawerControllerCubit()),
          BlocProvider(
              create: (context) => UserActionsCubit(DioConsumer(dio: Dio()))),
          BlocProvider(
              create: (context) => UserLoginCubit(DioConsumer(dio: Dio()))),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(fontFamily: MediStrings.appFont, useMaterial3: false),
          home: const SplashScreen(),
        ));
  }
}
