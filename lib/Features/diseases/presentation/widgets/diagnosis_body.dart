import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';

class DiagnosisBody extends StatelessWidget {
  const DiagnosisBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 25,
          bottom: TabBar(
            tabs: [
              Tab(
                text: BlocProvider.of<DiseasesCubit>(context).diseaseName!,
              ),
              Showcase(
                key: BlocProvider.of<DiseasesCubit>(context).prediction,
                title: "Prediction",
                description: "Prediction of disease based on inputs data",
                targetPadding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 8,
                ),
                child: const Tab(
                  text: "Prediction",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider.of<DiseasesCubit>(context).diseasesScreen!,
            BlocProvider.of<DiseasesCubit>(context).diseasesPredictionScreen!
          ],
        ),
      ),
    );
  }
}
