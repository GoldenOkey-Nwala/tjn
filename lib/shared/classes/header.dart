import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.maybePop(context),
          child: Container(
              padding: const EdgeInsets.only(left: 16.0),
              child: const FaIcon(FontAwesomeIcons.arrowLeftLong)
              // SvgPicture.asset(
              //   TjnIcons.back,
              //   color: AppColors.neutralBlack,)

              ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .80,
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryColorMain,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        )
      ],
    );
  }
}
