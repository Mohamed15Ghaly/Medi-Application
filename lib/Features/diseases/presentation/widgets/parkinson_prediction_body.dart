import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/presentation/widgets/parkinson_prediction_form.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/components/prediction_header.dart';
import 'package:team/core/utils/medi_strings.dart';

class ParkinsonPredictionBody extends StatelessWidget {
  const ParkinsonPredictionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiseasesCubit, DiseasesState>(
      listener: (context, state) {
        if (state is DiseasesSuccess) {
          defaultActionResult(
              context: context,
              resultWidget: state.predict == MediStrings.parkinsonWithDiabetes
                  ? Diagnosed(response: state.predict)
                  : const NotDiagnosed());
        }
        if (state is DiseasesFailure) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            title: 'Error',
            desc: state.error,
            btnOkOnPress: () {
              BlocProvider.of<DiseasesCubit>(context).setInitialState();
            },
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red,
          ).show();
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const PredictionHeader(),
              const Gap(25),
              const ParkinsonPredictionInputForm(),
              state is DiseasesLoading
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      title: "Predict",
                      onPressed: () {
                        BlocProvider.of<DiseasesCubit>(context)
                            .parkinsonPredictionValidation();
                      }),
              const Gap(10),
            ],
          ),
        );
      },
    );
  }
}
