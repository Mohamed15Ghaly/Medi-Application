import 'package:flutter/material.dart';

class TextFelidFormModel{
  TextFelidFormModel({
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.controller,
    required this.textInputType,
    this.suffixIcon,
    this.suffixOnPressed,

  });
  final String hintText, labelText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputType textInputType;
  IconData? suffixIcon;
  Function()? suffixOnPressed;
}