import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';

import '../../../../core/utils/response_font_size.dart';

class ChatInitialState extends StatelessWidget {
  const ChatInitialState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Center(
      child: DefaultText(
        txt:"Start typing...",
        color: MediColors.fourthColor,
      ),
    ));
  }
}
