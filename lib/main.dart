import 'package:flutter/material.dart';
import 'package:tjn/dashboard/landing_page.dart';
import 'package:tjn/home/comments.dart';
import 'package:tjn/home/main_testimony_feed.dart';
import 'package:tjn/home/single_post.dart';
import 'package:tjn/login_signup/forgot_password/create_new_password.dart';
import 'package:tjn/login_signup/forgot_password/forgot_password.dart';
import 'package:tjn/login_signup/forgot_password/verify_email.dart';
import 'package:tjn/login_signup/login.dart';
import 'package:tjn/login_signup/sign_up.dart';
import 'package:tjn/notification/notification.dart';
import 'package:tjn/onboarding/onboard1.dart';
import 'package:tjn/onboarding/onboard_screen.dart';
import 'package:tjn/onboarding/splash_screen.dart';
import 'package:tjn/shared/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TJN',
      theme: ThemeData(
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: AppColors.neutralWhite,
        ),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        LoginPage.id: (context) => const LoginPage(),
        VerifyEmail.id: (context) => const VerifyEmail(),
        CreateNewPassword.id: (context) => const CreateNewPassword(),
        SignUpPage.id: (context) => const SignUpPage(),
        OnBoardScreen.id: (context) => const OnBoardScreen(),
        MainTestimonyFeed.id: (context) => const MainTestimonyFeed(),
        LandingPage.id: (context) => const LandingPage(),
        OnBoard1.id: (context) => const OnBoard1(),
        NotificationPage.id: (context) => const NotificationPage(),
      },
    );
  }
}

/// flutter build apk --release
