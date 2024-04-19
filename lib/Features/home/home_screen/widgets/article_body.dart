import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/components/response_font_size.dart';
import 'package:team/core/utils/medi_assets.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    super.key,
    required this.articleText,
  });
  final String articleText;
  @override
  Widget build(BuildContext context) {
    double height = context.height;
    double width = context.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          articleText,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:TextStyle(
            color: Colors.white,
            fontSize: GetResponseFontSize(context: context, fontsize: 10),
          ),
        ),
        onTap: () {
          Get.bottomSheet(
            SizedBox(
              height:height/4,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: height/8,
                    color: Colors.blue,
                    width: MediaQuery.sizeOf(context).width,
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
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Gap(5),
                              Flexible(
                                child: FittedBox(
                                  child: AutoSizeText(
                                    'Medical Article',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: GetResponseFontSize(context: context, fontsize: 20),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(5),
                              const Flexible(
                                child: FittedBox(child: Icon(Icons.favorite, color: Colors.white,),),),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Flexible(
                          child: FittedBox(
                            child: SizedBox(
                              width:width/1.5,
                              child: AutoSizeText(
                                articleText,
                                maxLines: 7,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: GetResponseFontSize(context: context, fontsize: 10),
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
                        MediAssets.homeAppHeaderArticleDescription,),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        leading: const Icon(Icons.article, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
