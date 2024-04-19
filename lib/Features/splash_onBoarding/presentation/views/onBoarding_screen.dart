import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubits/cubit/on_boarding_action_cubit.dart';
import 'package:team/Features/splash_onBoarding/presentation/widgets/onBoarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingActionCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: OnBoardingScreenBody(),
          ),
        ),
      ),
    );
  }
}
