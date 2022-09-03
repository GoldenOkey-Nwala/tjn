import 'package:flutter/material.dart';
import 'package:tjn/home/profile.dart';
import 'package:tjn/home/single_post.dart';
import 'package:tjn/home/post_widgets/posts.dart';

import '../../shared/classes/assets.dart';
import 'content_model.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<PostCard> createState() => _PostsCardState();
}

class _PostsCardState extends State<PostCard> {
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
    return Posts(
      name: contents[i].name,
      location: contents[i].location,
      profilePicture: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Profile(index: i),
          ),
        ),
        child:
            contents[i].profilePicture ?? Image.asset(TjnImages.defaultProfile),
      ),
      testimony: GestureDetector(
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => SinglePost(index: widget.index),
          ),
        ),
        child: firstHalf.length <= 100
            ? RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: firstHalf,
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: ' . . . read more',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              )
            : Text(firstHalf),
      ),
      postPicture: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SinglePost(index: widget.index),
          ),
        ),
        child: SizedBox(
            child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: contents[i].picture,
        )),
      ),
    );
  }
}
