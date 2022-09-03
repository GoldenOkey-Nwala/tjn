import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/profile/profile_tabs.dart';
import 'package:tjn/shared/classes/assets.dart';
import 'package:tjn/shared/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor: AppColors.secondaryColorMain,
        leading: Align(
          alignment: const Alignment(0.3, 0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).maybePop(),
            child: const FaIcon(
              FontAwesomeIcons.arrowLeftLong,
            ),
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.asset(
                TjnImages.header,
                width: 414,
                height: 136,
                fit: BoxFit.cover,
              ),

              //Profile picture and add button
              Stack(
                children: [
                  Container(
                    width: 142,
                    padding: const EdgeInsets.all(7),
                    margin: const EdgeInsets.only(top: 68, left: 25),
                    decoration: const BoxDecoration(
                      color: AppColors.neutralWhite,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(TjnImages.mainProfileBig),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 50,
                      padding: const EdgeInsets.all(2.985),
                      decoration: const BoxDecoration(
                        color: AppColors.neutralWhite,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.circlePlus,
                          color: AppColors.secondaryColorDark,
                          size: 29.87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Albert Flores',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, bottom: 20),
            child: Text('@albertflores'),
          ),
          const ProfileTab(
            text: 'Account Details',
            prefixIcon: FontAwesomeIcons.user,
          ),
          const ProfileTab(text: 'Edit Profile',
          prefixIcon: FontAwesomeIcons.penToSquare,
          ),
          const ProfileTab(text: 'Message Request', 
          prefixIcon: FontAwesomeIcons.message,
          ),
          const ProfileTab(text: 'Language',
          prefixIcon: FontAwesomeIcons.globe,
          ),
          const SizedBox(height: 15),
          const ProfileTab(
            text: 'Light Mode',
            suffixIcon: true,
          prefixIcon: FontAwesomeIcons.sun,

          ),
          const ProfileTab(text: 'Support the App',
          prefixIcon: FontAwesomeIcons.moneyBill,
          ),
          const ProfileTab(text: 'Contact Us',
          prefixIcon: FontAwesomeIcons.phone,
          ),
          const ProfileTab(
            text: 'Sign Out',
            icon: FontAwesomeIcons.arrowRight,
            color: AppColors.neutralFailed,
          prefixIcon: FontAwesomeIcons.circleArrowLeft,

          ),
          const SizedBox(height: 10),
        ]),
      ),
    );
  }
}
