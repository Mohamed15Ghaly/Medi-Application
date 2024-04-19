import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/user_authentication/presentation/widgets/forget_password_screen_body.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_forget_password_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserForgetPasswordCubit(DioConsumer(dio: Dio())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Forget Password"),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ForgetPasswordScreenBody(),
          ),
        ),
      ),
    );
  }
}
