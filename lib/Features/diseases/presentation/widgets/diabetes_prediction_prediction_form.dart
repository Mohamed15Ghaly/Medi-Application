import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit_cubit.dart';
import 'package:team/Features/diseases/view_model/diagnosis_input_data.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class DiabetesPredictionForm extends StatelessWidget {
  const DiabetesPredictionForm({
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
                  hintText: "Enter Your ${ApiKey.pregnancies}",
                  labelText: ApiKey.pregnancies,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .pregnancies,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.pregnancies)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.glucose}",
                  labelText: ApiKey.glucose,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).glucose,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.glucose)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.bloodPressure}",
                  labelText: ApiKey.bloodPressure,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .bloodPressure,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.bloodPressure)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.skinThickness}",
                  labelText: ApiKey.skinThickness,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .skinThickness,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.skinThickness)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.insulin}",
                  labelText: ApiKey.insulin,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).insulin,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.pregnancies)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.bmi}",
                  labelText: ApiKey.bmi,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).bmi,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.bmi)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.diabetesPedigreeFunction}",
                  labelText: ApiKey.diabetesPedigreeFunction,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .diabetesPedigreeFunction,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.diabetesPedigreeFunction)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.age}",
                  labelText: ApiKey.age,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).age,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.age)),
            ),
            const Gap(10),
          ],
        ));
  }
}
