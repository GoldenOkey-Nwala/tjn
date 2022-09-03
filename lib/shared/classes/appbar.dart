import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/notification/notification.dart';

import '../../onboarding/onboard1.dart';
import '../theme/colors.dart';
import '../widgets/widgets.dart';
import 'assets.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    titleSpacing: 0,
    backgroundColor: AppColors.secondaryColorMain,
    leading: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: CircleAvatar(
        radius: 24,
        child: Image.asset(TjnImages.mainProfile),
      ),
    ),
    title: searchBar(),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(NotificationPage.id);
            },
            icon: const FaIcon(FontAwesomeIcons.bell, size: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(OnBoard1.id);
              },
              child: const FaIcon(FontAwesomeIcons.gear, size: 20),
            ),
          )
        ],
      ),
    ],
  );
}
