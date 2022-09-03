import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/onboarding/content_model.dart';
import 'package:tjn/onboarding/onboard1.dart';

import '../shared/classes/skip.dart';
import '../shared/theme/colors.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);
  static String id = 'onboard screen';
  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int currentSlideIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: content.length,
        onPageChanged: (index) {
          setState(() {
            currentSlideIndex = index;
          });
        },
        itemBuilder: (context, i) => Container(
          padding: const EdgeInsets.fromLTRB(18, 60, 18, 35),
          // foregroundDecoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: NetworkImage(
          //         'two-people-holding-hands-together-with-love-warmth-wooden-table_1150-26175.jpg'),
          //   ),
          // ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                const Color(0xFFD9D9D9),
                const Color(0xFF000000).withOpacity(0),
                const Color(0xFF000000),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                GestureDetector(
                  onTap: () => Navigator.maybePop(context),
                  child: const FaIcon(FontAwesomeIcons.arrowLeftLong),
                ),
                Skip(
                  text:
                      currentSlideIndex == content.length - 1 ? "Next" : "Skip",
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(OnBoard1.id);
                    // if (currentSlideIndex == content.length - 1) {
                    //   Navigator.of(context)
                    //       .pushReplacementNamed(LoginPage.id);
                    // }
                    // _pageController!.nextPage(
                    //   duration: const Duration(milliseconds: 100),
                    //   curve: Curves.easeInOut,
                    // );
                  },
                ),
              ]),
              Column(
                children: [
                  Text(
                    content[i].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26.13,
                      color: AppColors.neutralWhite,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    content[i].subtitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19.59,
                      color: AppColors.neutralWhite,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 64),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        content.length,
                        (index) => buildSlider(index),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSlider(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 16.33),
      width: currentSlideIndex == index ? 73.48 : 40, //: width,
      height: 8.16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.06),
        color: currentSlideIndex == index
            ? AppColors.secondaryColorMain
            : AppColors.secondaryColorAccent,
      ),
    );
  }
}
