import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tjn/dashboard/landing_page.dart';
import 'package:tjn/home/main_testimony_feed.dart';
import 'package:tjn/login_signup/sign_up.dart';
import 'package:tjn/shared/classes/header.dart';
import 'package:tjn/shared/theme/colors.dart';

import '../shared/classes/assets.dart';
import '../shared/classes/button.dart';
import '../shared/classes/social_media.dart';
import '../shared/classes/text_input.dart';
import 'forgot_password/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = 'login page';
  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              const Header(title: 'SIGN IN'),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SvgPicture.asset(TjnLogos.testimonies),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 90.0),
                child: SvgPicture.asset(TjnLogos.of),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldInputs(
                      labelText: 'Username',
                      hintText: 'Username',
                      textInputAction: TextInputAction.next,
                      controller: usernameController,
                    ),
                    const SizedBox(height: 16),
                    TextFieldInputs(
                      labelText: 'Password',
                      hintText: 'Password',
                      textInputAction: TextInputAction.done,
                      controller: passwordController,
                    ),
                    const SizedBox(height: 6),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ForgotPassword.id);
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: AppColors.neutralFailed.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed(LandingPage.id);
                        },
                        child: const ButtonDesign(
                          text: 'Sign in',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Row(
                        children: const [
                          Expanded(child: Divider(color: AppColors.grey)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'OR',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: AppColors.grey)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SocialMedia(
                          color: AppColors.socialBlue,
                          social: 'facebook',
                          logo: SvgPicture.asset(TjnLogos.facebook),
                          onTap: () {},
                        ),
                        const SizedBox(width: 17),
                        SocialMedia(
                          color: AppColors.neutralFailed,
                          social: 'Google',
                          logo: SvgPicture.asset(TjnLogos.google),
                          onTap: () {},
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 40.0),
                      child: GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed(SignUpPage.id),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              color: AppColors.primaryColorNeutral,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  color: AppColors.primaryColorDark,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
