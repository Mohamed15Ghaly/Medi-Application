import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/diseases/presentation/widgets/breast_cancer_prediction_form.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/prediction_header.dart';
import 'package:team/core/utils/medi_media_query.dart';

class BreastCancerPredictionBody extends StatelessWidget {
  const BreastCancerPredictionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PredictionHeader(),
          Gap(context.height * .025),
          const BreastCancerPredictionForm(),
          FittedBox(
            child: CustomButton(
                title: "Predict",
                onPressed: () {
                  BlocProvider.of<DiseasesCubit>(context)
                      .breastCancerPredictionValidation();
                }),
          ),
          Gap(context.height * .01),
        ],
      ),
    );
  }
}
