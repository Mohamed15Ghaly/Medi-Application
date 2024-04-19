import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiagnosisData extends StatelessWidget {
  const DiagnosisData({
    super.key,
    required this.data,
  });
  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Text(data[index]),
        separatorBuilder: (context, index) => const Gap(5),
        itemCount: data.length);
  }
}
