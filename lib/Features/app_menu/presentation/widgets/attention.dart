import 'package:flutter/material.dart';
import 'package:team/Features/app_menu/data/view_model/app_menu_view_model.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';

class Attention extends StatelessWidget {
  const Attention({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: DefaultText(
            txt: "Attention",
            color: MediColors.thirdColor,
          )),
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: const FittedBox(child: Icon(Icons.warning)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(height: context.height / 3, MediImage.attention),
        Text(AppMenuViewModel.attention,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: MediColors.primaryColor,
              fontSize: getResponseFontSize(context: context, fontSize: 14)),
        ),
      ],
    );
  }
}
