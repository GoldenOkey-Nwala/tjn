import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
    required this.color,
    required this.social,
    required this.logo,
    required this.onTap,
  }) : super(key: key);

  final Color color;
  final String social;
  final SvgPicture logo;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logo,
              const SizedBox(width: 5),
              Text(
                'Sign in with $social',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.neutralWhite,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
