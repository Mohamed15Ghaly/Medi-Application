import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/app_menu/presentation/user_actions_cubit/user_actions_cubit.dart';
import 'package:team/core/api/api_key.dart';
import 'package:team/core/cache/cache_helper.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/Features/user_authentication/data/models/text_felid_form_model.dart';

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
                      color: MediColors.primaryColor)),
              const Divider(),
              DefaultTextFelidForm(
                textFelidFormModel: TextFelidFormModel(
                  hintText: "New User Name",
                  prefixIcon: Icons.person,
                  suffixIcon: Icons.edit,
                  textInputType: TextInputType.name,
                  labelText: CacheHelper().getData(key: ApiKey.name),
                  controller:
                      BlocProvider.of<UserActionsCubit>(context).newUserName,
                ),
              ),
              Gap(context.height * .02),
              CustomButton(
                  title: "Save",
                  onPressed: () {
                    BlocProvider.of<UserActionsCubit>(context)
                        .changeUserNameValidation();
                  }),
            ],
          ),
        );
      },
    );
  }
}
