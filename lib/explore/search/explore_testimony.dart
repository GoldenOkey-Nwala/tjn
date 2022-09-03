import 'package:flutter/material.dart';
import 'package:tjn/shared/classes/appbar.dart';

import '../../home/post_widgets/content_model.dart';
import '../../home/post_widgets/post_card.dart';
import '../../home/profile.dart';
import '../../shared/theme/colors.dart';

class ExploreTestimony extends StatefulWidget {
  const ExploreTestimony({Key? key, required this.index}) : super(key: key);
final int index;
  @override
  State<ExploreTestimony> createState() => _ExploreTestimonyState();
}

class _ExploreTestimonyState extends State<ExploreTestimony> with TickerProviderStateMixin{

   late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      appBar: appBar(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4,
              isScrollable: true,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24),
              controller: _tabController,
              indicatorColor: AppColors.secondaryColorMain,
              labelColor: AppColors.neutralBlack,
              labelStyle: tabBarStyle(),
              unselectedLabelColor: AppColors.navColor,
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                },
              ),
              tabs: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Top Testimony'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Latest Testimony'),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 16.0),
                      shrinkWrap: true,
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return PostCard(index: index);
                      },
                    ),
                  ),
                  const Center(child: Text('My Post')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
