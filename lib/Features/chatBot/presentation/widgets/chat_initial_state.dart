import 'package:flutter/material.dart';

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
          style: TextStyle(color: Colors.grey),
        ),
      ));
  }
}