import 'package:flutter/material.dart';
import 'package:team/Features/diseases/parkinson_screen/widgets/parkinson_screen_body.dart';
import 'package:team/core/components/floating.dart';

class ParkinsonScreen extends StatelessWidget {
  const ParkinsonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ParkinsonScreenBody(),
        ),
      ),
    );
  }
}

