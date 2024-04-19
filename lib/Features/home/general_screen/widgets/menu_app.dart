import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubits/cubit/change_mode_cubit.dart';
import 'package:team/Features/home/general_screen/widgets/diabetes.dart';
import 'package:team/Features/home/general_screen/widgets/menu_list.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeModeCubit, ChangeModeState>(
      builder: (context, state) {
        return const Column(
          children: [
            Diabetes(),
            MenuList()
          ],
        );
      },
    );
  }
}

