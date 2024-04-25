import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_prediction.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_screen.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_prediction.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_screen.dart';
import 'package:team/Features/diseases/presentation/views/diseases_screen.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_prediction.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_screen.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_prediction.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_screen.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/response_font_size.dart';


class Disease extends StatelessWidget {
  const Disease({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: MediColors.primaryColor,
      title: const DefaultText(
        txt: 'Disease',
        color: MediColors.primaryColor,
      ),
      leading: const Icon(
        Icons.medical_services,
        color: MediColors.primaryColor,
      ),
      children: [
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const ParkinsonScreen(),
                diseasesPredictionScreen: const ParkinsonPredictionScreen(),
                diseaseName: 'Parkinson');
            Get.to(() => const DiseasesScreen());
          },
          title: const Text('Parkinson',
              style: TextStyle(color: MediColors.primaryColor)),
          leading: const Icon(
            Icons.medical_services,
            color: MediColors.primaryColor,
          ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const BreastCancerScreen(),
                diseasesPredictionScreen: const BreastCancerPredictionScreen(),
                diseaseName: 'Breast Cancer');
            Get.to(() => const DiseasesScreen());
          },
          title: const Text('Breast Cancer',
              style: TextStyle(
                color: MediColors.primaryColor,
              )),
          leading: const Icon(
            Icons.medical_services,
            color: MediColors.primaryColor,
          ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const HeartDiseaseScreen(),
                diseasesPredictionScreen: const HeartDiseasePredictionScreen(),
                diseaseName: 'Heart Disease');
            Get.to(() => const DiseasesScreen());
          },
          title: const Text('Heart Disease',
              style: TextStyle(color: MediColors.primaryColor
                  // fontWeight: FontWeight.bold,
                  )),
          leading: const Icon(
            Icons.medical_services,
            color: MediColors.primaryColor,
          ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
        ListTile(
          onTap: () {
            BlocProvider.of<DiseasesCubit>(context).setDiseaseScreen(
                diseasesScreen: const DiabetesScreen(),
                diseasesPredictionScreen: const DiabetesPredictionScreen(),
                diseaseName: 'Diagnosis');
            Get.to(() => const DiseasesScreen());
          },
          title: const Text('Diagnosis',
              style: TextStyle(color: MediColors.primaryColor)),
          leading: const Icon(
            Icons.medical_services,
            color: MediColors.primaryColor,
          ),
          trailing:
              const Icon(Icons.chevron_right, color: MediColors.primaryColor),
        ),
      ],
    );
  }
}
