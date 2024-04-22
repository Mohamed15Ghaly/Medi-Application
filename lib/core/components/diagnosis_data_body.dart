import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_media_query.dart';

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
        separatorBuilder: (context, index) =>  Gap(context.height * .005),
        itemCount: data.length);
  }
}
