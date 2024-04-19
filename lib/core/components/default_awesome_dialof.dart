  import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AwesomeDialog DefaultAwesomeDialog({
    required BuildContext context,
    required String description,
    required DialogType dialogType,
  }) {
    return AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: dialogType,
      title: 'Error',
      desc: description,
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.red,
    );
  }
