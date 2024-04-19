import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/cubit/user_actions_cubit.dart';
import 'package:team/components/response_font_size.dart';

class UserAccountsHeader extends StatelessWidget {
  const UserAccountsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return UserAccountsDrawerHeader(
          decoration:const BoxDecoration(
            color: Colors.blue,
          ),
          accountName: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: FittedBox(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const Gap(5),
              Flexible(
                child: AutoSizeText(
                  "BlocProvider.of<UserAuthenticationCubit>(context).userLogIn!.name",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    fontSize: GetResponseFontSize(context: context, fontsize: 16)
                  ),
                ),
              ),
            ],
          ),
          accountEmail: Row(
            children: [
              const Flexible(
                child: FittedBox(
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const Gap(5),
              Flexible(
                child: AutoSizeText(
                  " BlocProvider.of<UserAuthenticationCubit>(context).userLogIn!.email",
                  style: TextStyle(color: Colors.white,fontSize: GetResponseFontSize(context: context, fontsize: 16,),),
                ),
              ),
            ],
          ),
          currentAccountPicture: const Hero(
            tag: 'userPhoto',
            child: FittedBox(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/male.jpg"),
              ),
            ),
          ),
        );
      },
    );
  }
}
