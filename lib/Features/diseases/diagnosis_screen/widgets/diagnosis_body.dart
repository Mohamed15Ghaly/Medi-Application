import 'package:flutter/material.dart';

class DiagnosisBody extends StatelessWidget {
  const DiagnosisBody(
      {super.key,
      required this.diabetesScreenBody,
      required this.predictionInputBody});
  final Widget diabetesScreenBody, predictionInputBody;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 25,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Diabetes",
              ),
              Tab(
                text: "Prediction",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [diabetesScreenBody, predictionInputBody],
        ),
      ),
    );
  }
}
