import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/home/profile.dart';
import 'package:tjn/home/post_widgets/posts.dart';

import '../shared/classes/assets.dart';
import '../shared/theme/colors.dart';
import 'post_widgets/content_model.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key, required this.index}) : super(key: key);
  static String id = 'comments';
  final int index;
  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    int i = widget.index;
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
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Posts(
                  name: contents[i].name,
                  location: contents[i].location,
                  profilePicture: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Profile(index: i),
                      ),
                    ),
                    child: contents[i].profilePicture ??
                        Image.asset(TjnImages.defaultProfile),
                  ),
                  testimony: Text(contents[i].testimony),
                  postPicture: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      child: contents[i].postPicture,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.navColor),
                borderRadius: BorderRadius.circular(8)),
            child: Row(children: const [
              FaIcon(FontAwesomeIcons.circlePlus),
              SizedBox(width: 20.5),
              Text('Leave your thoughts here ...')
            ]),
          )
        ],
      ),
    );
  }
}
