import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tjn/explore/trending_content.dart';
import 'package:tjn/shared/classes/appbar.dart';

import '../../shared/theme/colors.dart';
import 'explore_testimony.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 24),
                child: Text(
                  'Trending Testimonies',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: exploreContent.length,
                  itemBuilder: (context, i) => Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 20, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              exploreContent[i].title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                             ExploreTestimony(index: i),
                                      ),
                                    ),
                                child: const FaIcon(FontAwesomeIcons.ellipsis))
                          ],
                        ),
                        Text(
                          '#${exploreContent[i].title.toLowerCase()}',
                          style: const TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w500,
                            color: AppColors.navColor,
                          ),
                        ),
                        Text(
                          '${exploreContent[i].count} comment',
                          style: const TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.w500,
                            color: AppColors.navColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
