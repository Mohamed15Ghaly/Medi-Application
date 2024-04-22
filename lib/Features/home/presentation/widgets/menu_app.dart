import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team/Features/home/presentation/widgets/disease.dart';
import 'package:team/Features/home/presentation/widgets/menu_list.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Disease(),
        MenuList()
      ],
    );
  }
}

