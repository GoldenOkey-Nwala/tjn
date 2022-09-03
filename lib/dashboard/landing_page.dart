import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/explore/search/explore_page.dart';
import 'package:tjn/home/main_testimony_feed.dart';
import 'package:tjn/messages/messages_page.dart';
import 'package:tjn/post/post_page.dart';
import 'package:tjn/profile/profile_page.dart';
import 'package:tjn/shared/theme/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static String id = 'landing page';
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedPage = 0;

  final List<Widget> _pages = const [
    MainTestimonyFeed(),
    ExplorePage(),
    PostPage(),
    MessagesPages(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: _pages[_selectedPage],
      bottomNavigationBar: FloatingNavbar(
          elevation: 0,
          backgroundColor: AppColors.neutralWhite, //greenColor,
          unselectedItemColor: AppColors.navColor, //whiteColor,
          selectedItemColor: AppColors.secondaryColorMain, //whiteColor,
          selectedBackgroundColor: AppColors.neutralWhite, //greenColor,
          items: [
            FloatingNavbarItem(icon: FontAwesomeIcons.house, title: "Home"),
            FloatingNavbarItem(
                icon: FontAwesomeIcons.magnifyingGlass, title: "Explore"),
            FloatingNavbarItem(
                icon: FontAwesomeIcons.circlePlus, title: "Post"),
            FloatingNavbarItem(
                icon: FontAwesomeIcons.message, title: "Messages"),
            FloatingNavbarItem(icon: FontAwesomeIcons.user, title: "Profile"),
          ],
          currentIndex: _selectedPage,
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          }),
    );
  }
}
