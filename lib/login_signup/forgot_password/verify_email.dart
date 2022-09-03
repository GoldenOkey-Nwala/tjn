import 'package:flutter/material.dart';
import 'package:tjn/login_signup/forgot_password/create_new_password.dart';
import 'package:tjn/shared/classes/button.dart';
import 'package:tjn/shared/classes/header.dart';
import '../../shared/theme/colors.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key, this.email}) : super(key: key);
  static String id = 'verify email';
  final String? email;

  @override
  State<VerifyEmail> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Header(title: 'Verify Your Email'),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  height: MediaQuery.of(context).size.height * .80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Please Enter The 4 Digit Code Sent To \n${widget.email}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64.0, bottom: 48),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            inputCode(),
                            inputCode(),
                            inputCode(),
                            inputCode(),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Resend Code',
                          style: TextStyle(
                            color: AppColors.neutralFailed.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(CreateNewPassword.id); 
                    },
                    child: const ButtonDesign(text: 'Verify'),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

Container inputCode() {
  return Container(
    width: 48,
    height: 48,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColorMain,
        ),
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryColorAccent),
    child: const TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: '',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      style: TextStyle(
        color: AppColors.neutralBlack,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
