import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/models/text_felid_form_model.dart';

class DefaultTextFelidForm extends StatelessWidget {
  const DefaultTextFelidForm({
    super.key,
    required this.textFelidFormModel,
  });
  final TextFelidFormModel textFelidFormModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return " Please Enter ${textFelidFormModel.labelText}";
        } else {
          return null;
        }
      },
      obscureText: textFelidFormModel.obscureText ?? false,
      keyboardType: textFelidFormModel.textInputType,
      controller: textFelidFormModel.controller,
      decoration: InputDecoration(
        // fillColor: MediColors.fourthColor,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintStyle: const TextStyle(color: MediColors.fourthColor, fontSize: 16),
        hintText: textFelidFormModel.hintText,
        labelText: textFelidFormModel.labelText,
        prefixIcon: Icon(textFelidFormModel.prefixIcon),
        suffixIcon: textFelidFormModel.suffixIcon != null
            ? IconButton(
                onPressed: textFelidFormModel.suffixOnPressed,
                icon: Icon(textFelidFormModel.suffixIcon))
            : null,
      ),
    );
  }
}
