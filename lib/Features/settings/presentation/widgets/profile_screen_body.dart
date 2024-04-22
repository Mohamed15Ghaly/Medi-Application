import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/presentation/widgets/user_cahnge_image.dart';
import 'package:team/Features/settings/presentation/widgets/user_change_name.dart';
import 'package:team/Features/settings/presentation/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/presentation/cubit/user_log_in_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Hero(
                          tag: "userPhoto",
                          child: BlocProvider.of<UserActionsCubit>(context)
                                      .profilePhoto !=
                                  null
                              ? CircleAvatar(
                                  radius: 100,
                                  backgroundImage: FileImage(File(
                                      BlocProvider.of<UserActionsCubit>(context)
                                          .profilePhoto!
                                          .path)),
                                )
                              : const CircleAvatar(
                                  radius: 100,
                                  backgroundImage:
                                      AssetImage("assets/images/male.jpg"),
                                ),
                        ),
                                      Gap(context.height * .02),

                        Text(
                          BlocProvider.of<UserLoginCubit>(context)
                              .userLogIn!
                              .name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: MediColors.primaryColor),
                        ),
                        Text(
                            BlocProvider.of<UserLoginCubit>(context)
                                .userLogIn!
                                .email,
                            style: const TextStyle(
                                color: MediColors.primaryColor)),
                        const Divider(),
                        TabBar(
                            indicatorColor: Colors.transparent,
                            splashBorderRadius: BorderRadius.circular(10),
                            labelColor: MediColors.primaryColor,
                            unselectedLabelColor: MediColors.fourthColor,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ClashDisplay",
                            ),
                            unselectedLabelStyle: const TextStyle(
                              fontSize: 16,
                              fontFamily: "ClashDisplay",
                            ),
                            isScrollable: true,
                            tabs: const [
                              Tab(
                                  text: "Edit User Name",
                                  icon: Icon(Icons.person)),
                              Tab(
                                  text: "Change Photo",
                                  icon: Icon(Icons.image)),
                            ]),
                        const Divider(),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [UserChangeName(), UserChangePhoto()],
              ),
            ),
          ),
        );
      },
    );
  }
}
