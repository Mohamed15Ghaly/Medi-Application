import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/user_authentication/presentation/widgets/signUp_screen_body.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_sign_up_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserSignUpCubit(DioConsumer(dio: Dio())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SignUpScreenBody(),
          ),
        ),
      ),
    );
  }
}
