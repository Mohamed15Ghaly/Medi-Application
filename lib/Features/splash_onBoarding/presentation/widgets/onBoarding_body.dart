import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_share.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/cubits/cubit/on_boarding_action_cubit.dart';
import 'package:team/Features/user_authentication/presentation/views/login_screen.dart';
import 'package:team/models/on_Boarding_model.dart';
import 'package:team/Features/splash_onBoarding/presentation/widgets/onBoarding_item_body.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: context.height,
      child: Column(children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              CacheHelper()
                  .saveData(key: MediShare.appViewOnBoarding, value: true);
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
              controller: pageController,
              itemBuilder: (BuildContext context, int index) =>
                  OnBoardingItemBody(
                    onBoardingModel: OnBoardingModel.onBoardingList[index],
                  ),
              itemCount: OnBoardingModel.onBoardingList.length),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 6,
          effect: JumpingDotEffect(
            dotWidth: 12,
            dotHeight: 12,
            activeDotColor: MediColors.primaryColor,
            dotColor: Colors.blue.shade100,
          ),
        ),
        Gap(context.width * .03),
        BlocConsumer<OnBoardingActionCubit, OnBoardingActionState>(
          listener: (context, state) {},
          builder: (context, state) {
            return CustomButton(
                title: BlocProvider.of<OnBoardingActionCubit>(context)
                    .onBoardingButtonText,
                onPressed: () {
                  context
                      .read<OnBoardingActionCubit>()
                      .onBoardingActionIncrease(pageController);
                });
          },
        ),
      ]),
    );
  }
}
