import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/Features/diseases/view_model/diagnosis_input_data.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/models/text_felid_form_model.dart';

class ParkinsonPredictionInputForm extends StatelessWidget {
  const ParkinsonPredictionInputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: BlocProvider.of<DiseasesCubit>(context).parkinsonFormKey,
        child: Column(
          children: [
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpFoHz}",
                  labelText: ApiKey.mdvpFoHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpFoHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFoHz)),
            ),
             Gap(context.height * .015),
            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpFhiHz}",
                  labelText: ApiKey.mdvpFhiHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpFhiHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFhiHz)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpFloHz}",
                  labelText: ApiKey.mdvpFloHz,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpFloHz,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpFloHz)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpJitterPercentage}",
                  labelText: ApiKey.mdvpJitterPercentage,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context)
                      .mdvpJitterPercentage,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpJitterPercentage)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpJitterAbs}",
                  labelText: ApiKey.mdvpJitterAbs,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).mdvpJitterAbs,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpJitterAbs)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpRap}",
                  labelText: ApiKey.mdvpRap,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpRap,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpRap)),
            ),
                        Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpPpq}",
                  labelText: ApiKey.mdvpPpq,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpPpq,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpPpq)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.jitterDdf}",
                  labelText: ApiKey.jitterDdf,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).jitterDdf,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.jitterDdf)),
            ),
                        Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpShimmer}",
                  labelText: ApiKey.mdvpShimmer,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).mdvpShimmer,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpShimmer)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpShimmerDb}",
                  labelText: ApiKey.mdvpShimmerDb,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).mdvpShimmerDb,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.mdvpShimmerDb)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.mdvpApq}",
                  labelText: ApiKey.mdvpApq,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).mdvpApq,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpApq)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.shimmerApq3}",
                  labelText: ApiKey.shimmerApq3,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).shimmerApq3,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerApq3)),
            ),
                        Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.shimmerApq5}",
                  labelText: ApiKey.shimmerApq5,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).shimmerApq5,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerApq5)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.shimmerDda}",
                  labelText: ApiKey.shimmerDda,
                  prefixIcon: Icons.medical_information,
                  controller:
                      BlocProvider.of<DiseasesCubit>(context).shimmerDda,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () => DiagnosisInputData.inputDescription(
                      key: ApiKey.shimmerDda)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.nhr}",
                  labelText: ApiKey.nhr,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).nhr,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.nhr)),
            ),
                         Gap(context.height * .01),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.hnr}",
                  labelText: ApiKey.mdvpPpq,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).hnr,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.hnr)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter Your ${ApiKey.rpde}",
                  labelText: ApiKey.rpde,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).rpde,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.rpde)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.dfa}",
                  labelText: ApiKey.dfa,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).dfa,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.mdvpPpq)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.spread1}",
                  labelText: ApiKey.spread1,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).spread1,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.spread1)),
            ),
                         Gap(context.height * .01),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.spread2}",
                  labelText: ApiKey.spread2,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).spread2,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.spread2)),
            ),
                         Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.d2}",
                  labelText: ApiKey.d2,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).d2,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.d2)),
            ),
                        Gap(context.height * .015),

            DefaultTextFelidForm(
              textFelidFormModel: TextFelidFormModel(
                  hintText: "Enter the ${ApiKey.ppe}",
                  labelText: ApiKey.ppe,
                  prefixIcon: Icons.medical_information,
                  controller: BlocProvider.of<DiseasesCubit>(context).ppe,
                  textInputType: TextInputType.number,
                  suffixIcon: Icons.info,
                  suffixOnPressed: () =>
                      DiagnosisInputData.inputDescription(key: ApiKey.ppe)),
            ),
                        Gap(context.height * .015),

          ],
        ));
  }
}
