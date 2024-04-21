import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_prediction.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_screen.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_prediction.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_screen.dart';
import 'package:team/Features/diseases/presentation/views/diagnosis_screen.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_prediction.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_screen.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_prediction.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_screen.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';

import '../../../../components/response_font_size.dart';

class Disease extends StatelessWidget {
  const Disease({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.blue,
      title: const DefaultText(
        txt: 'Diabetes',
        color: Colors.blue,
      ),
      leading: const Icon(
        Icons.medical_services,
        color: Colors.blue,
      ),
      children: [
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const ParkinsonScreen(),
                diseasesPredictionScreen: const ParkinsonPredictionScreen(),
                diseaseName: 'Diabetes');
            Get.to(() => const ParkinsonScreen());
          },
          title: const Text('Parkinson', style: TextStyle(color: Colors.blue)),
          leading: const Icon(
            Icons.medical_services,
            color: Colors.blue,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const BreastCancerScreen(),
                diseasesPredictionScreen: const BreastCancerPredictionScreen(),
                diseaseName: 'Breast Cancer');
            Get.to(() => const DiagnosisScreen());
          },
          title: const Text('Breast Cancer',
              style: TextStyle(
                color: Colors.blue,
              )),
          leading: const Icon(
            Icons.medical_services,
            color: Colors.blue,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const HeartDiseaseScreen(),
                diseasesPredictionScreen: const HeartDiseasePredictionScreen(),
                diseaseName: 'Heart Disease');
            Get.to(() => const DiagnosisScreen());
          },
          title: const Text('Heart Disease',
              style: TextStyle(color: Colors.blue
                  // fontWeight: FontWeight.bold,
                  )),
          leading: const Icon(
            Icons.medical_services,
            color: Colors.blue,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const DiabetesScreen(),
                diseasesPredictionScreen: const DiabetesPredictionScreen(),
                diseaseName: 'Diagnosis');
            Get.to(() => const DiagnosisScreen());
          },
          title: const Text('Diagnosis', style: TextStyle(color: Colors.blue)),
          leading: const Icon(
            Icons.medical_services,
            color: Colors.blue,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
      ],
    );
  }
}
