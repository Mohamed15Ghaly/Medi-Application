import 'package:flutter/material.dart';
import 'package:team/Features/diseases/presentation/widgets/parkinson_screen_body.dart';

class ParkinsonScreen extends StatelessWidget {
  const ParkinsonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ParkinsonScreenBody(),
        ),
      ),
    );
  }
}
