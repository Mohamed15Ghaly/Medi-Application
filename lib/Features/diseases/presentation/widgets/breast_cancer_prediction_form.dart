import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';
import 'package:team/Features/diseases/view_model/diagnosis_input_data.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class BreastCancerPredictionForm extends StatelessWidget {
  const BreastCancerPredictionForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<DiseasesCubit>(context).breastCancerFormKey,
        child: Column(
          children: [
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.clumpThickness}",
                  labelText: ApiKey.clumpThickness,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).clumpThickness,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.clumpThickness)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.uniformCellSize}",
                  labelText: ApiKey.uniformCellSize,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).uniformCellSize,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.uniformCellSize)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.uniformCellShape}",
                  labelText: ApiKey.uniformCellShape,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).uniformCellShape,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.uniformCellShape)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.marginalAdhesion}",
                  labelText: ApiKey.marginalAdhesion,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).marginalAdhesion,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.marginalAdhesion)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.singleEpithelialSize}",
                  labelText: ApiKey.singleEpithelialSize,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context)
                      .singleEpithelialSize,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.singleEpithelialSize)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.bareNuclei}",
                  labelText: ApiKey.bareNuclei,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).bareNuclei,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.bareNuclei)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.blandChromatin}",
                  labelText: ApiKey.blandChromatin,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).blandChromatin,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.blandChromatin)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.normalNucleoli}",
                  labelText: ApiKey.normalNucleoli,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).normalNucleoli,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.normalNucleoli)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mitoses}",
                  labelText: ApiKey.mitoses,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mitoses,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mitoses)),
            ),
            const Gap(10),
          ],
        ));
  }
}
