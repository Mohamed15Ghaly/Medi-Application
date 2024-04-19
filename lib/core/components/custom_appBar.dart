import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
  });
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.1),
          ),
          alignment: Alignment.center,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back',
          ),
        ),
        const Spacer(),
        Text(
          appBarTitle,
          style: const TextStyle(
            // color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 40,
          height: 40,
        ),
        const Spacer()
      ],
    );
  }
}
