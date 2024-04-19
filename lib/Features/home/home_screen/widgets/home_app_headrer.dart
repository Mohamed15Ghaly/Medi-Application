import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/core/utils/medi_media_query.dart';
import '../article.dart';
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
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    Flexible(
                      child: FittedBox(
                        child: SizedBox(
                          width: width/2.2,
                          child: AutoSizeText(
                            'Welcom to Medi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: GetResponseFontSize(context: context, fontsize: 20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: FittedBox(
                        child: SizedBox(
                          width: width/2,
                          child: AutoSizeText(
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            "In medi app you serve you with all love , work for your comfort and all our concern is your health. "
                                "Fell free to contact us if you have problem",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: GetResponseFontSize(context: context, fontsize: 16),
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
                    width: width/2.8,
                    child: Image.asset(
                        MediAssets.homeAppHeaderTitle),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Gap(20),
        SizedBox(
          height:50,
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
                articleText: ArticleDate.article[index],
              );
            },
            itemCount: ArticleDate.article.length,
          ),
        ),
        const Gap(10),
        const Divider(),
        const Gap(10),
        SizedBox(
          width: width,
          height: height / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset(
                  height: height/4,
                  width:width/4,
                  MediAssets.homeAppBody,
                ),
              ),
              Text(
                "Let's take a look about the symptoms and causes of each disease ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: GetResponseFontSize(context: context, fontsize: 16),
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
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
