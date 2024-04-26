import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    super.key,
    required this.articleText,
  });
  final String articleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MediColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          articleText,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: MediColors.secondaryColor,
            fontSize: getResponseFontSize(context: context, fontSize: 10),
          ),
        ),
        onTap: () {
          Get.bottomSheet(
            SizedBox(
              height: context.height / 4,
              width: context.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: context.height / 8,
                    color: MediColors.primaryColor,
                    width: context.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Flexible(
                                child: FittedBox(
                                  child: Icon(
                                    Icons.article,
                                    color: MediColors.secondaryColor,
                                  ),
                                ),
                              ),
                                           Gap(context.height * .005),

                              Flexible(
                                child: FittedBox(
                                  child: AutoSizeText(
                                    'Medical Article',
                                    style: TextStyle(
                                      color: MediColors.secondaryColor,
                                      fontSize: getResponseFontSize(
                                          context: context, fontSize: 20),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                                           Gap(context.height * .005),

                              const Flexible(
                                child: FittedBox(
                                  child: Icon(
                                    Icons.favorite,
                                    color: MediColors.secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                                     Gap(context.height * .01),

                        Flexible(
                          child: FittedBox(
                            child: SizedBox(
                              width: context.width / 1.5,
                              child: AutoSizeText(
                                articleText,
                                maxLines: 7,
                                style: TextStyle(
                                  color: MediColors.secondaryColor,
                                  fontSize: getResponseFontSize(
                                      context: context, fontSize: 10),
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
                      Image.asset(
                        MediImage.homeAppHeaderArticleDescription,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        leading: const Icon(Icons.article, color: MediColors.secondaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
