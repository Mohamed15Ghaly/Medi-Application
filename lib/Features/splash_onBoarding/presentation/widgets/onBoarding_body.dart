import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team/Features/splash_onBoarding/data/view_model/onBoarding_view_model.dart';
import 'package:team/Features/splash_onBoarding/presentation/cubit/on_boarding_action_cubit.dart';
import 'package:team/Features/splash_onBoarding/presentation/widgets/onBoarding_item_body.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_share.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  State<OnBoardingScreenBody> createState() =>
      _OnBoardingActionScreenBodyState();
}

class _OnBoardingActionScreenBodyState extends State<OnBoardingScreenBody> {
 

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingActionCubit, OnBoardingActionState>(
      listener: (context, state) {
        if (state is OnBoardingActionOver) {
          CacheHelper().saveData(key: MediShare.appViewOnBoarding, value: true);
          Get.to(() => const LoginScreen());
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: context.width,
          height: context.height,
          child: Column(children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  CacheHelper().saveData(key: MediShare.appViewOnBoarding, value: true);
                  Get.offAll(() => const LoginScreen());
                },
                child: const DefaultText(
                  txt: "Skip",
                  color: MediColors.primaryColor,
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  onPageChanged: (value) {
                    BlocProvider.of<OnBoardingActionCubit>(context)
                        .onBoardingActionValue(value);
                  },
                  controller: BlocProvider.of<OnBoardingActionCubit>(context)
                      .pageController,
                  itemBuilder: (BuildContext context, int index) =>
                      OnBoardingItemBody(
                        onBoardingModel:
                            OnBoardingViewModel.onBoardingList[index],
                      ),
                  itemCount: OnBoardingViewModel.onBoardingList.length),
            ),
            SmoothPageIndicator(
              controller: BlocProvider.of<OnBoardingActionCubit>(context)
                  .pageController,
              count: 6,
              effect: JumpingDotEffect(
                dotWidth: context.width * 0.02,
                dotHeight: context.width * 0.02,
                activeDotColor: MediColors.primaryColor,
                dotColor: Colors.blue.shade100,
              ),
            ),
            Gap(context.width * .03),
            FittedBox(
              child: CustomButton(
                  title: state is OnBoardingActionLast ? "Get Started" : "Next",
                  onPressed: () {
                    context
                        .read<OnBoardingActionCubit>()
                        .onBoardingActionIncrease();
                  }),
            )
          ]),
        );
      },
    );
  }
}
