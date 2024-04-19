import 'package:flutter/material.dart';

class ChatLoading extends StatelessWidget {
  const ChatLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: Center(child: CircularProgressIndicator()));
  }
}
