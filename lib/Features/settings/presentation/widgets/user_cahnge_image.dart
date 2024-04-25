import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:team/Features/settings/presentation/cubit/user_actions_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';

class UserChangePhoto extends StatelessWidget {
  const UserChangePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is UserActionsLoading,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(MediImage.changePhoto),
                const Text(" Upload new photo to change it ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MediColors.primaryColor,
                    )),
                const Divider(),
                CustomButton(
                    title: state is UserActionsInitial ? "Uploading" : "Save",
                    onPressed: () {
                      state is UserActionsInitial
                          ? BlocProvider.of<UserActionsCubit>(context)
                              .uploadProfilePic()
                          : BlocProvider.of<UserActionsCubit>(context)
                              .saveProfilePhoto(context);
                    }),
              ],
            ),
          ),
        );
      },
    );
  }
}
