import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit_cubit.dart';
import 'package:team/Features/diseases/view_model/diagnosis_input_data.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/models/text_felid_form_model.dart';

class ParkinsonPredictionInputForm extends StatelessWidget {
  const ParkinsonPredictionInputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<DiseasesPredictionCubit>(context).parkinsonFormKey,
        child: Column(
          children: [
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpFoHz}",
                  labelText: ApiKey.mdvpFoHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpFoHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFoHz)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpFhiHz}",
                  labelText: ApiKey.mdvpFhiHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpFhiHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFhiHz)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpFloHz}",
                  labelText: ApiKey.mdvpFloHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpFloHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFloHz)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpJitterPercentage}",
                  labelText: ApiKey.mdvpJitterPercentage,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpJitterPercentage,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpJitterPercentage)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpJitterAbs}",
                  labelText: ApiKey.mdvpJitterAbs,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpJitterAbs,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpJitterAbs)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpRap}",
                  labelText: ApiKey.mdvpRap,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).mdvpRap,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpRap)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpPpq}",
                  labelText: ApiKey.mdvpPpq,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).mdvpPpq,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpPpq)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.jitterDdf}",
                  labelText: ApiKey.jitterDdf,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .jitterDdf,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.jitterDdf)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpShimmer}",
                  labelText: ApiKey.mdvpShimmer,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpShimmer,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpShimmer)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpShimmerDb}",
                  labelText: ApiKey.mdvpShimmerDb,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .mdvpShimmerDb,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpShimmerDb)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.mdvpApq}",
                  labelText: ApiKey.mdvpApq,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).mdvpApq,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpApq)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.shimmerApq3}",
                  labelText: ApiKey.shimmerApq3,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .shimmerApq3,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerApq3)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.shimmerApq5}",
                  labelText: ApiKey.shimmerApq5,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .shimmerApq5,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerApq5)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.shimmerDda}",
                  labelText: ApiKey.shimmerDda,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesPredictionCubit>(context)
                      .shimmerDda,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerDda)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.nhr}",
                  labelText: ApiKey.nhr,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).nhr,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.nhr)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.hnr}",
                  labelText: ApiKey.mdvpPpq,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).hnr,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.hnr)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.rpde}",
                  labelText: ApiKey.rpde,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).rpde,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.rpde)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.dfa}",
                  labelText: ApiKey.dfa,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).dfa,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpPpq)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.spread1}",
                  labelText: ApiKey.spread1,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).spread1,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.spread1)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.spread2}",
                  labelText: ApiKey.spread2,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).spread2,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.spread2)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.d2}",
                  labelText: ApiKey.d2,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).d2,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.d2)),
            ),
            const Gap(10),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.ppe}",
                  labelText: ApiKey.ppe,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesPredictionCubit>(context).ppe,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.ppe)),
            ),
            const Gap(10),
          ],
        ));
  }
}
