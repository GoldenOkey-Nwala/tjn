import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/home/comments.dart';
import 'package:tjn/home/profile.dart';
import 'package:tjn/home/post_widgets/posts.dart';

import '../shared/classes/assets.dart';
import '../shared/theme/colors.dart';
import 'post_widgets/content_model.dart';

class SinglePost extends StatefulWidget {
  const SinglePost({Key? key, required this.index}) : super(key: key);
  static String id = 'single post';
  final int index;
  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  late String firstHalf;

  @override
  void initState() {
    super.initState();

    int i = widget.index;
    contents[i].testimony.length > 100
        ? firstHalf = contents[i].testimony.substring(0, 100)
        : firstHalf = contents[i].testimony;
  }

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
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: FaIcon(
              FontAwesomeIcons.arrowLeftLong,
            ),
          ),
        ),
      ),
      body: ListView(
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
            testimony: firstHalf.length <= 100
                ? RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: firstHalf,
                      style: Theme.of(context).textTheme.bodyText1,
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' . . . read more',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  )
                : Text(firstHalf),
            postPicture: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                child: contents[i].postPicture,
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Comments(index: i),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
