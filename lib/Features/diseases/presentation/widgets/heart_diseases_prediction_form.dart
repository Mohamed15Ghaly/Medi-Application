import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';
import 'package:team/Features/diseases/view_model/diagnosis_input_data.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class HeartDiseasesPredictionInputForm extends StatelessWidget {
  const HeartDiseasesPredictionInputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<DiseasesCubit>(context).heartDiseaseFormKey,
        child: Column(
          children: [
            Showcase(
              key: BlocProvider.of<DiseasesCubit>(context).input,
              title: "Input Data",
              description:
                  "We will predict if you have Diabetes based on your input data or not "
                  "so please enter your data correctly and click on predict button to get result",
              targetPadding: const EdgeInsets.all(8.0),
              targetBorderRadius: BorderRadius.circular(8.0),
              child: DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
                    hintText: "Enter Your ${ApiKey.age}",
                    labelText: ApiKey.age,
                    prefixIcon: Icons.medical_information,
                    controller: BlocProvider.of<DiseasesCubit>(context).age,
                    textInputType: TextInputType.number,
                    suffixIcon: Icons.info,
                    suffixOnPressed: () =>
                        DiagnosisInputData.inputDescription(key: ApiKey.age)),
              ),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.sex}",
                  labelText: ApiKey.sex,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).sex,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.sex)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.cp}",
                  labelText: ApiKey.cp,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).cp,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.cp)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.trestbps}",
                  labelText: ApiKey.trestbps,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).trestbps,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.trestbps)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.chol}",
                  labelText: ApiKey.chol,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).chol,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.chol)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.fbs}",
                  labelText: ApiKey.fbs,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).fbs,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.fbs)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.restecg}",
                  labelText: ApiKey.restecg,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).restecg,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.restecg)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.thalach}",
                  labelText: ApiKey.thalach,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).thalach,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.thalach)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.exang}",
                  labelText: ApiKey.exang,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).exang,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.exang)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.oldpeak}",
                  labelText: ApiKey.oldpeak,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).oldpeak,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.oldpeak)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.slope}",
                  labelText: ApiKey.slope,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).slope,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.slope)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.ca}",
                  labelText: ApiKey.ca,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).ca,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.ca)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.thal}",
                  labelText: ApiKey.thal,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).thal,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.thal)),
            ),
            const Gap(10),
          ],
        ));
  }
}
