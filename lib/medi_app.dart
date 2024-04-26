import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:team/Features/diseases/data/repository/diseases_repository.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/Features/home/presentation/home_cubit/home_cubit.dart';
import 'package:team/Features/app_menu/data/repository/user_actions_repository.dart';
import 'package:team/Features/app_menu/presentation/user_actions_cubit/user_actions_cubit.dart';
import 'package:team/Features/splash_onBoarding/presentation/views/splash_screen.dart';
import 'package:team/Features/user_authentication/data/repository/user_repository.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_log_in_cubit.dart';
import 'package:team/Features/user_authentication/presentation/auth_cubit/user_on_pressed_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';
import 'package:team/core/utils/medi_strings.dart';
import 'package:team/core/utils/service_locator.dart';

class MediApplication extends StatelessWidget {
  const MediApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DiseasesCubit(
              DiseasesRepositoryImpl(apiConsumer: getIt.get<DioConsumer>()),
            ),
          ),
          BlocProvider(create: (context) => UserOnPressedCubit()),
          BlocProvider(create: (context) => HomeCubit()),
          BlocProvider(
              create: (context) => UserActionsCubit(
                  userActionsRepository: UserActionsRepository(
                      apiConsumer:getIt.get<DioConsumer>()))),
          BlocProvider(
              create: (context) => UserLoginCubit(
                  userRepository:
                      UserRepository(apiConsumer: getIt.get<DioConsumer>()))),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(fontFamily: MediStrings.appFont, useMaterial3: false),
          home: const SplashScreen(),
        ));
  }
}
