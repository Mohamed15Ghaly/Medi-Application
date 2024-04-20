import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_prediction.dart';
import 'package:team/Features/diseases/presentation/views/breast_cancer_screen.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_prediction.dart';
import 'package:team/Features/diseases/presentation/views/diabetes_screen.dart';
import 'package:team/Features/diseases/diagnosis_screen/view/diagnosis_screen.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_prediction.dart';
import 'package:team/Features/diseases/presentation/views/heart_disease_screen.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_prediction.dart';
import 'package:team/Features/diseases/presentation/views/parkinson_screen.dart';

import '../../../../components/response_font_size.dart';

class Diabetes extends StatelessWidget {
  const Diabetes({
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
          onTap: () => Get.to(() => const DiagnosisScreen(
                diagnosisScreen: ParkinsonScreen(),
                predictionInput: ParkinsonPredictionScreen(),
              )),
          title: const Text('Parkinson', style: TextStyle(color: Colors.blue)),
          leading: const Icon(
            Icons.medical_services,
            color: Colors.blue,
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.blue),
        ),
        ListTile(
          onTap: () => Get.to(() => const DiagnosisScreen(
                diagnosisScreen: BreastCancerScreen(),
                predictionInput: BreastCancerPredictionScreen(),
              )),
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
          onTap: () => Get.to(() => const DiagnosisScreen(
                diagnosisScreen: HeartDiseasesScreen(),
                predictionInput: HeartDiseasesPredictionScreen(),
              )),
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
          onTap: () => Get.to(() => const DiagnosisScreen(
              diagnosisScreen: DiabetesScreen(),
              predictionInput: DiabetesPredictionScreen())),
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
