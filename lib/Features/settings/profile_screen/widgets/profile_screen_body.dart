import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/Features/settings/cubit/user_actions_cubit.dart';
import 'package:team/Features/settings/profile_screen/widgets/user_cahnge_image.dart';
import 'package:team/Features/settings/profile_screen/widgets/user_change_name.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/core/utils/medi_assets.dart';
import 'package:team/core/utils/medi_media_query.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {
        if (state is UserActionsSuccess) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.scale,
            title: 'Success',
            desc: 'User name changed successfully',
            btnOkOnPress: () {},
            btnOkIcon: Icons.check_circle,
          ).show();
        }
        if (state is UserActionsFailure) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            title: 'Error',
            desc: state.error,
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red,
          ).show();
        }
      },
      builder: (context, state) => DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height / 3.5,
                        width: context.width,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              MediAssets.graph,
                              color: Colors.blue,
                            ),
                            const Hero(
                              tag: "userPhoto",
                              child: CircleAvatar(
                                radius: 75,
                                backgroundImage:
                                    AssetImage("assets/images/male.jpg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        BlocProvider.of<UserLoginCubit>(context)
                            .userLogIn!
                            .name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      Text(
                          BlocProvider.of<UserLoginCubit>(context)
                              .userLogIn!
                              .email,
                          style: const TextStyle(color: Colors.blue)),
                      const Divider(),
                      TabBar(
                          indicatorColor: Colors.transparent,
                          splashBorderRadius: BorderRadius.circular(10),
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.grey,
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
                            Tab(text: "Change Photo", icon: Icon(Icons.image)),
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
      ),
    );
  }
}
