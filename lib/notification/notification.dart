import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/notification/model.dart';
import 'package:tjn/shared/classes/assets.dart';
import 'package:tjn/shared/widgets/widgets.dart';

import '../onboarding/onboard1.dart';
import '../shared/theme/colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);
  static String id = 'notification';
  @override
  State<NotificationPage> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondaryColorMain,
        leading: GestureDetector(
          onTap: () => Navigator.maybePop(context),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: const FaIcon(
              FontAwesomeIcons.arrowLeftLong,
            ),
          ),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(OnBoard1.id);
                  },
                  child: const FaIcon(FontAwesomeIcons.gear, size: 20),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: notify.length,
        itemBuilder: (context, i) => Container(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 10),
          child: Row(
            children: [
              Image.asset(TjnImages.defaultProfile, width: 48),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  if (notify[i].title == 'Sent connection request') {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => connectionRequest(context),
                    );
                  }
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            notify[i].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            notify[i].title,
                            style: const TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        ],
                      ),
                      Text(
                        notify[i].time,
                        style: const TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
