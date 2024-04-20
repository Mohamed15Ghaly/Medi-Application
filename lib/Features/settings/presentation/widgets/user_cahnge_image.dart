import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_image.dart';

class UserChangePhoto extends StatelessWidget {
  const UserChangePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(MediImage.changePhoto),
          const Text(" Upload new photo to change it ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
          const Divider(),
          IconButton(
            iconSize: 80,
            onPressed: () {
              // ImagePicker()
              //     .pickImage(source: ImageSource.gallery)
              //     .then((value) =>
              //         BlocProvider.of<ProfileUpdateCubit>(context)
              //             .updateProfile(value!));
            },
            icon:
                const Icon(Icons.add_a_photo, color: Colors.blue),
          ),
          const Gap(20),
          CustomButton(title: "Save", onPressed: () {}),
        ],
      ),
    );
  }
}
