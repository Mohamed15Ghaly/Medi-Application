import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubits/cubit/index_screen_cubit.dart';
import 'package:team/Features/home/general_screen/widgets/menu_app.dart';
import 'package:team/Features/home/general_screen/widgets/user_account_header.dart';

import '../../../../components/response_font_size.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: const DefaultText(txt : "Menu", color: Colors.white,),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => BlocProvider.of<IndexScreenCubit>(context)
                .drawerController
                .close!(),
            icon: const Icon(Icons.close),
          ),
        ),
        body: ListView(
          children: const [UserAccountsHeader(), MenuApp()],
        ),
      ),
    );
  }
}
