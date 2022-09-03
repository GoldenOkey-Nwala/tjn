import 'package:flutter/material.dart';
import 'package:tjn/dashboard/landing_page.dart';
import 'package:tjn/home/main_testimony_feed.dart';
import 'package:tjn/shared/classes/button.dart';
import 'package:tjn/shared/classes/header.dart';
import 'package:tjn/shared/classes/text_input.dart';

import '../../shared/theme/colors.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);
  static String id = 'create new password';

  @override
  State<CreateNewPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<CreateNewPassword> {
  TextEditingController emailController = TextEditingController();

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
                const Header(title: 'Create New Password'),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  height: MediaQuery.of(context).size.height * .80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Your New Password Must Be Different \nFrom Previously Used Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64.0),
                        child: TextFieldInputs(
                          labelText: 'New Password',
                          // hintText: 'New ',
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          controller: emailController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 48),
                        child: TextFieldInputs(
                          labelText: 'Confirm Password',
                          // hintText: 'New ',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          controller: emailController,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Change Password',
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
                      Navigator.of(context).pushReplacementNamed(LandingPage.id);
                    },
                    child: const ButtonDesign(text: 'Saved'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
