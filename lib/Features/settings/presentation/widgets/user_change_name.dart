import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/settings/view_model/cubit/user_actions_cubit.dart';
import 'package:team/Features/user_authentication/view_model/cubit/user_log_in_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/models/text_felid_form_model.dart';

class UserChangeName extends StatelessWidget {
  const UserChangeName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserActionsCubit, UserActionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(MediImage.editUserName),
              const Text("Enter new user name to change it",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              const Divider(),
              DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
                  hintText: "New User Name",
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.edit,
                  textInputType: TextInputType.name,
                  labelText:
                      BlocProvider.of<UserLoginCubit>(context).userLogIn!.name,
                  controller:
                      BlocProvider.of<UserActionsCubit>(context).newUserName,
                ),
              ),
              const Gap(20),
              CustomButton(
                  title: "Save",
                  onPressed: () {
                    BlocProvider.of<UserActionsCubit>(context)
                        .changeUserNameValidation(
                            userId: BlocProvider.of<UserLoginCubit>(context)
                                .userLogIn!
                                .id,
                            context: context);
                  }),
            ],
          ),
        );
      },
    );
  }
}
