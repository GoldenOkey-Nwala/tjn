import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/login_signup/login.dart';
import 'package:tjn/login_signup/sign_up.dart';
import 'package:tjn/shared/classes/button.dart';
import 'package:tjn/shared/theme/colors.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({Key? key}) : super(key: key);
  static String id = 'on board 1';
  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20).copyWith(bottom: 48),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.maybePop(context),
                        child: const FaIcon(FontAwesomeIcons.arrowLeftLong),
                      ),
                      const Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.neutralBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),

              // ListView.builder(
              //   itemBuilder: (context, i) => Wrap(
              //     spacing: 12,
              //     runSpacing: 30,
              //     direction: Axis.horizontal,
              //     children: select(areas),
              //   ),
              // ),

              Wrap(
                spacing: 12,
                runSpacing: 30,
                direction: Axis.horizontal,
                children: [
                  select('Mental Health'),
                  select('Financial Breakthrough'),
                  select('Job'),
                  select('Childlessness'),
                  select('Accident'),
                  select('Divorce'),
                  select('Marriage'),
                  select('Depression'),
                  select('Suicide'),
                  select('Poverty'),
                  select('Infidelity'),
                  select('Failure'),
                  select('Breakup'),
                  select('Career Pressure'),
                  select('Health Crises'),
                  select('Orphans'),
                  select('Family instability'),
                  select('Immigration'),
                  select('Crime'),
                  select('Bad Habit'),
                  select('Debts'),
                  select('Discrimination'),
                  select('Domestic Violence'),
                  select('Oppression'),
                  select('Racism'),
                  select('Unemployment'),
                  select('Bullying'),
                  select('Ageism'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(LoginPage.id);
                  },
                  child: const ButtonDesign(
                    text: 'LOGIN',
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(SignUpPage.id);
                },
                child: const ButtonDesign(
                  text: 'SIGN UP',
                  size: 16,
                  weight: FontWeight.w700,
                  textColor: AppColors.primaryColorMain,
                  color: AppColors.neutralWhite,
                  border: AppColors.primaryColorMain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> areas = [
  'Mental Health',
  'Financial Breakthrough',
  'Job',
  'Childlessness',
  'Accident',
  'Divorce',
  'Marriage',
  'Depression',
  'Suicide',
  'Poverty',
  'Infidelity',
  'Failure',
  'Breakup',
  'Career Pressure',
  'Health Crises',
  'Orphans',
  'Family instability',
  'Immigration',
  'Crime',
  'Bad Habit',
  'Debts',
  'Discrimination',
  'Oppression',
  'Racism',
  'Unemployment',
  'Bullying',
  'Ageism',
];
select(String text) {
  return Container(
    padding: const EdgeInsets.all(12),
    // margin: const EdgeInsets.only(right: 10),
    // width: 167,
    height: 42,
    decoration: BoxDecoration(
        color: AppColors.primaryColorMain,
        borderRadius: BorderRadius.circular(8)),
    child: Text(
      text,
      style: const TextStyle(
        color: AppColors.neutralWhite,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
