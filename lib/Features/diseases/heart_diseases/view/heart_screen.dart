import 'package:flutter/material.dart';
import 'package:team/Features/diseases/heart_diseases/widgets/heart_screen_body.dart';
import 'package:team/core/components/floating.dart';

class HeartDiseasesScreen extends StatelessWidget {
  const HeartDiseasesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: HeartDiseasesScreenBody(),
        ),
      ),
    );
  }
}

