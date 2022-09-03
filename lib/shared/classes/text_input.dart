import 'package:flutter/material.dart';

import '../theme/colors.dart';

class TextFieldInputs extends StatelessWidget {
  const TextFieldInputs({
    Key? key,
    this.labelText,
    this.hintText,
    required this.textInputAction,
    required this.controller,
    this.keyboardType,
  }) : super(key: key);
  final String? labelText, hintText;
  final TextInputAction textInputAction; 
  final TextEditingController controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText!,
          style: const TextStyle(
            color: AppColors.labelTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.neutralBlack,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: const EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primaryColorMain),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primaryColorMain),
            ),
          ),
        ),
      ],
    );
  }
}
