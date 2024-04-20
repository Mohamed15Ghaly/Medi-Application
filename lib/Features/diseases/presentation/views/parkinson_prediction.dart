import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/diseases/presentation/widgets/parkinson_prediction_body.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit_cubit.dart';
import 'package:team/core/api/dio_consumer.dart';

class ParkinsonPredictionScreen extends StatelessWidget {
  const ParkinsonPredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiseasesPredictionCubit(
        DioConsumer(dio: Dio())
      ),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ParkinsonPredictionBody(),
          ),
        ),
      ),
    );
  }
}