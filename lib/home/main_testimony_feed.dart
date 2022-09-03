import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/notification/notification.dart';
import 'package:tjn/onboarding/onboard1.dart';
import 'package:tjn/shared/classes/assets.dart';
import 'package:tjn/shared/widgets/widgets.dart';

import '../shared/theme/colors.dart';
import 'post_widgets/content_model.dart';
import 'post_widgets/post_card.dart';

class MainTestimonyFeed extends StatefulWidget {
  const MainTestimonyFeed({Key? key}) : super(key: key);
  static String id = 'main testimony feed';
  @override
  State<MainTestimonyFeed> createState() => _MainTestimonyFeedState();
}

class _MainTestimonyFeedState extends State<MainTestimonyFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      appBar: AppBar(
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
      ),
      body: SizedBox(
        height: double.infinity,
        child: ListView.builder(
          // shrinkWrap: true,
          itemCount: contents.length,
          itemBuilder: (context, index) {
            return PostCard(index: index);
          },
        ),
      ),
    );
  }
}
