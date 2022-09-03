import 'package:flutter/material.dart';

import '../theme/colors.dart';

class Skip extends StatelessWidget {
  const Skip({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.neutralWhite,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}