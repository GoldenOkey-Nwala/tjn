import 'package:flutter/material.dart';
import 'verify_email.dart';
import '../../shared/classes/button.dart';
import '../../shared/classes/header.dart';
import '../../shared/classes/text_input.dart';
import '../../shared/theme/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  static String id = 'forgot password';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Header(title: 'Forgot Password'),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  height: MediaQuery.of(context).size.height * .80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Please Enter Your Email To \nReceive a verification Code',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64.0, bottom: 48),
                        child: TextFieldInputs(
                          labelText: 'Email',
                          hintText: 'Email',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Try another way',
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              VerifyEmail(email: emailController.text),
                        ),
                      ); 
                      emailController.clear();
                    },
                    child: const ButtonDesign(text: 'Send'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
