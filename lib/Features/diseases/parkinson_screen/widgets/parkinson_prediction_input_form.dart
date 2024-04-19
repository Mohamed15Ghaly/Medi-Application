import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit_cubit.dart';
import 'package:team/Features/diseases/diagnosis_screen/diagnosis_input_data.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class DiabetesPredictionInputForm extends StatelessWidget {
  const DiabetesPredictionInputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<DiseasesPredictionCubit>(context).diabetesFormKey,
        child: Column(
          children: [
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your Pregnancies",
                  labelText: "Pregnancies",
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .pregnancies,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: "Pregnancies")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your Glucose",
                  labelText: "Glucose",
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).glucose,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: "Glucose")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your BloodPressure",
                  labelText: "BloodPressure",
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .bloodPressure,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: "BloodPressure")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your SkinThickness",
                  labelText: "SkinThickness",
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .skinThickness,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: "SkinThickness")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your Insulin",
                  labelText: "Insulin",
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).insulin,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: "Insulin")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your BMI",
                  labelText: "BMI",
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).bmi,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: "BMI")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your DiabetesPedigreeFunction",
                  labelText: "DiabetesPedigreeFunction",
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .diabetesPedigreeFunction,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: "DiabetesPedigreeFunction")),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your Age",
                  labelText: "Age",
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).age,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: "Age")),
            )
          ],
        ));
  }
}
