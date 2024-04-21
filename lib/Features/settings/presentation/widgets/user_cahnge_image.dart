import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team/Features/settings/view_model/cubit/user_actions_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
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
        return SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(MediImage.changePhoto),
              const Text(" Upload new photo to change it ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
              const Divider(),
              CustomButton(
                  title: state is UserActionsLoadingSave ? "Save" : "Uploading",
                  onPressed: () {
                    state is UserActionsLoadingSave
                        ? BlocProvider.of<UserActionsCubit>(context)
                            .saveProfilePhoto()
                        : ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((value) =>
                                BlocProvider.of<UserActionsCubit>(context)
                                    .uploadProfilePhoto(value!));
                  }),
            ],
          ),
        );
      },
    );
  }
}
