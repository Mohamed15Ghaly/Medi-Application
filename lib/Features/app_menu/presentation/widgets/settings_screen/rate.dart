import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:team/Features/app_menu/data/view_model/app_menu_view_model.dart';
import 'package:team/Features/app_menu/presentation/user_actions_cubit/user_actions_cubit.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/components/default_text_felid_form.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:team/core/utils/response_font_size.dart';
import 'package:team/Features/user_authentication/data/models/text_felid_form_model.dart';

class RateUs extends StatelessWidget {
  const RateUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: DefaultText(
            txt: "Rate Us",
            color: MediColors.thirdColor,
          )),
      collapsedBackgroundColor: Colors.blue.shade100,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: const FittedBox(child: Icon(Icons.thumb_up)),
      expandedAlignment: Alignment.center,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Image.asset(height: context.height / 3, MediImage.rateUs),
        Text(
          AppMenuViewModel.rateUs,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getResponseFontSize(context: context, fontSize: 14),
              fontWeight: FontWeight.bold),
        ),
        Gap(context.height * .015),
        DefaultTextFelidForm(
            textFelidFormModel: TextFelidFormModel(
          hintText: "Enter Your Opinion",
          labelText: "Opinion",
          prefixIcon: Icons.message,
          controller: BlocProvider.of<UserActionsCubit>(context).rateUs,
          textInputType: TextInputType.text,
        )),
        Gap(context.height * .015),
        CustomButton(
            title: "Send",
            onPressed: () {
              BlocProvider.of<UserActionsCubit>(context).rateUsValidation();
            }),
      ],
    );
  }
}
