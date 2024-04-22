import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/Features/diseases/presentation/widgets/heart_diseases_prediction_form.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_prediction_result.dart';
import 'package:team/core/components/prediction_header.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/medi_strings.dart';

class HeartDiseasesPredictionBody extends StatefulWidget {
  const HeartDiseasesPredictionBody({
    super.key,
  });

  @override
  State<HeartDiseasesPredictionBody> createState() => _HeartDiseasesPredictionBodyState();
}

class _HeartDiseasesPredictionBodyState extends State<HeartDiseasesPredictionBody> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
              BlocProvider.of<DiseasesCubit>(context).prediction,
              BlocProvider.of<DiseasesCubit>(context).input,
            ]));
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiseasesCubit, DiseasesState>(
      listener: (context, state) {
        if (state is DiseasesSuccess) {
          defaultActionResult(
              context: context,
              resultWidget:
                  state.predict == MediStrings.heartDiseaseWithDiabetes
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
               Gap(context.height * .025),
              const HeartDiseasesPredictionInputForm(),
              state is DiseasesLoading
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      title: "Predict",
                      onPressed: () {
                        BlocProvider.of<DiseasesCubit>(context)
                            .heartDiseasePredictionValidation();
                      }),
               Gap(context.height * .01),
            ],
          ),
        );
      },
    );
  }
}