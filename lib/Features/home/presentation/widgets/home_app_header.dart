import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/home/data/view_model/article.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'article_body.dart';

class HomeAppHeader extends StatelessWidget {
  const HomeAppHeader({
    super.key,
    required TabController tabController,
  });
  @override
  Widget build(BuildContext context) {
    double height = context.height;
    double width = context.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height / 3.5,
          width: width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: height / 4.5,
                width: width,
                decoration: BoxDecoration(
                  color: MediColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(context.height * .01),
                    Flexible(
                      child: FittedBox(
                        child: SizedBox(
                          child: AutoSizeText(
                            'Welcome to Medi',
                            style: TextStyle(
                              color: MediColors.secondaryColor,
                              fontSize: getResponseFontSize(
                                  context: context, fontSize: 24),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(context.height * .01),
                    Flexible(
                      flex: 4,
                      child: FittedBox(
                        child: SizedBox(
                          width: width / 2,
                          child: AutoSizeText(
                            "In medi app you serve you with all love , work for your comfort and all our concern is your health , "
                            "Fell free to contact us if you have problem or need any help.",
                            style: TextStyle(
                              color: MediColors.secondaryColor,
                              fontSize: getResponseFontSize(
                                  context: context, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: width / 2.8,
                    child: Image.asset(MediImage.homeAppHeaderTitle),
                  ),
                ],
              ),
            ],
          ),
        ),
        Gap(context.height * .02),
        SizedBox(
          height: 50,
          width: width,
          child: Swiper(
            autoplay: true,
            layout: SwiperLayout.DEFAULT,
            itemWidth: context.width,
            itemHeight: height * .06,
            viewportFraction: 0.8,
            scale: 0.9,
            itemBuilder: (BuildContext context, int index) {
              return ArticleBody(
                articleText: ArticleData.article[index],
              );
            },
            itemCount: ArticleData.article.length,
          ),
        ),
        Gap(context.height * .01),
        const Divider(),
        Gap(context.height * .01),
        SizedBox(
          width: width,
          height: height / 3.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Image.asset(
                  MediImage.homeAppBody,
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: context.height / 13,
                  child: AutoSizeText(
                    "Let's take a look about the symptoms and causes of each disease ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:
                          getResponseFontSize(context: context, fontSize: 16),
                      fontWeight: FontWeight.bold,
                      color: MediColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        )
      ],
    );
  }
}
