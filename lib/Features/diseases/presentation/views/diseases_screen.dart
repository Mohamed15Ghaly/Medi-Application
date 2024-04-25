import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:team/Features/diseases/presentation/cubit/diseases_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_duration.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/Features/diseases/presentation/widgets/diseases_body.dart';

class DiseasesScreen extends StatelessWidget {
  const DiseasesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(MediDuration.diseaseDuration),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: LottieBuilder.asset(MediImage.diabetesSplash),
            ),
          );
        } else {
          return Scaffold(
            body: BlocConsumer<DiseasesCubit, DiseasesState>(
              listener: (context, state) {},
              builder: (context, state) {
                return ModalProgressHUD(
                  inAsyncCall: state is DiseasesLoading,
                  color: MediColors.thirdColor,
                  child: ShowCaseWidget(
                    builder:
                        Builder(builder: (context) => const DiseasesBody()),
                    autoPlay: true,
                    autoPlayDelay: MediDuration.showCaseDuration,
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
