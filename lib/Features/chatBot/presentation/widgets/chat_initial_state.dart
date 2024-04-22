import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';

class ChatInitialState extends StatelessWidget {
  const ChatInitialState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Center(
      child: Text(
        "Start typing...",
        style: TextStyle(color: MediColors.fourthColor),
      ),
    ));
  }
}
