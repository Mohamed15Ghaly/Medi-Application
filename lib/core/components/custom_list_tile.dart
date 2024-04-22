import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.onTap,
  });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('flutter team members'),
      leading: const Icon(Icons.people, color: MediColors.primaryColor),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: MediColors.fourthColor.withOpacity(.05),
      trailing: const Icon(Icons.chevron_right, color: MediColors.primaryColor),
    );
  }
}
