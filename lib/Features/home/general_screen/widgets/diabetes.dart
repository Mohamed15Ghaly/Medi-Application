import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/Features/diseases/diabetes_screen/view/diabetes_prediction_input.dart';
import 'package:team/Features/diseases/diabetes_screen/view/diabetes_screen.dart';
import 'package:team/Features/diseases/diabetes_screen/widgets/diabetes_screen_body.dart';
import 'package:team/Features/diseases/diagnosis_screen/view/diagnosis_screen.dart';

import '../../../../components/response_font_size.dart';

class Diabetes extends StatelessWidget {
  const Diabetes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.blue,
      title: const DefaultText(txt: 'Diabetes',color: Colors.blue,),
      leading: const Icon(
        Icons.medical_services,
        color: Colors.blue,
      ),
      children: [
        ListTile(
          onTap: () => Get.to(() => const DiagnosisScreen(
                diagnosisScreen: DiabetesScreen(),
                predictionInput: Text("data"),
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
                diagnosisScreen: DiabetesScreen(),
                predictionInput: Text("data"),
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
                diagnosisScreen: DiabetesScreenBody(),
                predictionInput: Text("data"),
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
              predictionInput: DiabetesPredictionInput())),
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
