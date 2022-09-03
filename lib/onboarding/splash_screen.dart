import 'package:flutter/material.dart';
import 'package:tjn/login_signup/login.dart';
import 'package:tjn/onboarding/onboard_screen.dart';
import 'package:tjn/shared/classes/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = 'splash screen';

  @override
  State<SplashScreen> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<SplashScreen> {
  @override
  void initState() {
    var next = const Duration(seconds: 3);
    Future.delayed(next, () {
      Navigator.of(context).pushNamedAndRemoveUntil(OnBoardScreen.id, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: Center(
        child: SvgPicture.asset(TjnLogos.logo),
      ),
    );
  }
}
