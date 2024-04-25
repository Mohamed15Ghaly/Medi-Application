import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';

class Complications extends StatelessWidget {
  const Complications({
    super.key,
    required this.complications,
  });
  final String complications;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Gap(context.height * .01),
            const Text("Complications : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(complications)
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  height: MediaQuery.of(context).size.height * 0.3,MediImage.diseasesComplications1),
            ),
             Gap(context.height * .01),
            Expanded(
              child: Image.asset(height: MediaQuery.of(context).size.height * 0.3,MediImage.diseasesComplications2),
            ),
          ],
        ),
      ],
    );
  }
}
