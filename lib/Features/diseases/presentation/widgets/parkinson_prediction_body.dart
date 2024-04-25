import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/Features/diseases/presentation/widgets/parkinson_prediction_form.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/prediction_header.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ParkinsonPredictionBody extends StatefulWidget {
  const ParkinsonPredictionBody({
    super.key,
  });

  @override
  State<ParkinsonPredictionBody> createState() => _ParkinsonPredictionBodyState();
}

class _ParkinsonPredictionBodyState extends State<ParkinsonPredictionBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
       WidgetsBinding.instance
        .addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
              BlocProvider.of<DiseasesCubit>(context).prediction,
              BlocProvider.of<DiseasesCubit>(context).input,
            ]));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PredictionHeader(),
          Gap(context.height * .025),
          const ParkinsonPredictionInputForm(),
          CustomButton(
              title: "Predict",
              onPressed: () {
                BlocProvider.of<DiseasesCubit>(context)
                    .parkinsonPredictionValidation();
              }),
          Gap(context.height * .01),
        ],
      ),
    );
  }
}
