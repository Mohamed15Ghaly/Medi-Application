import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/settings/presentation/widgets/profile_screen_body.dart';
import 'package:team/Features/settings/presentation/cubit/user_actions_cubit.dart';
import 'package:team/core/utils/medi_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            desc: state.message,
            btnOkOnPress: () {
              BlocProvider.of<UserActionsCubit>(context).setInitialState();
            },
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
            btnOkOnPress: () {
              BlocProvider.of<UserActionsCubit>(context).setInitialState();
            },
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red,
          ).show();
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is UserActionsLoading,
          progressIndicator: const CircularProgressIndicator(),
          color: MediColors.thirdColor.withOpacity(.5),
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
              centerTitle: true,
            ),
            body: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: ProfileScreenBody(),
              ),
            ),
          ),
        );
      },
    );
  }
}
