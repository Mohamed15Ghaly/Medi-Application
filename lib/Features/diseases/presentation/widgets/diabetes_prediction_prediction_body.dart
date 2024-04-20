import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/presentation/widgets/diabetes_prediction_prediction_form.dart';
import 'package:team/Features/diseases/view_model/cubit/diseases_cubit_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/components/prediction_header.dart';
import 'package:team/core/utils/medi_strings.dart';

class DiabetesPredictionBody extends StatelessWidget {
  const DiabetesPredictionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiseasesPredictionCubit, DiseasesPredictionState>(
      listener: (context, state) {
        if (state is DiseasesPredictionSuccess) {
          defaultActionResult(
              context: context,
              resultWidget: state.predict == MediStrings.diagnosedWithDiabetes
                  ? Diagnosed(response: state.predict)
                  : const NotDiagnosed());
        }
        if (state is DiseasesPredictionFailure) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            title: 'Error',
            desc: state.error,
            btnOkOnPress: () {
              BlocProvider.of<DiseasesPredictionCubit>(context)
                  .setInitialState();
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
              const DiabetesPredictionForm(),
              state is DiseasesPredictionLoading
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      title: "Predict",
                      onPressed: () {
                        BlocProvider.of<DiseasesPredictionCubit>(context)
                            .diabetesPredictionValidation();
                      }),
              const Gap(10),
            ],
          ),
        );
      },
    );
  }
}
