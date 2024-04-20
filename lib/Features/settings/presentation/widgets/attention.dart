import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

import '../../../../components/response_font_size.dart';

class Attention extends StatelessWidget {
  const Attention({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const FittedBox(fit: BoxFit.scaleDown,child: DefaultText(txt:"Attention", color: Colors.black,)),
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: const FittedBox(child: Icon(Icons.warning)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(height:context.height/3,MediImage.attention),
        Text(
          "Warning : Medi doesn't ask you about personal information like password or credit card outside the application , "
          "Please don't share your information with anyone , "
          "Beware of the dangers posed by hackers and take proactive measures to protect your personal information and online accounts.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: GetResponseFontSize(context: context, fontsize: 14)),
        ),
      ],
    );
  }
}
