import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/Features/diseases/presentation/widgets/heart_diseases_prediction_body.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_strings.dart';

class HeartDiseasePredictionScreen extends StatelessWidget {
  const HeartDiseasePredictionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiseasesCubit, DiseasesState>(
      listener: (context, state) {
        if (state is DiseasesSuccess) {
          defaultActionResult(
              context: context,
              resultWidget: state.predict == MediStrings.heartDiseaseWithDiabetes
                  ? Diagnosed(response: state.predict)
                  : NotDiagnosed(response: state.predict));
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
        return ModalProgressHUD(
          inAsyncCall: state is DiseasesLoading,
          color: MediColors.thirdColor,
          child: const Scaffold(
              body: SafeArea(
                  child: Padding(
            padding: EdgeInsets.all(16.0),
            child: HeartDiseasesPredictionBody(),
          ))),
        );
      },
    );
  }
}
