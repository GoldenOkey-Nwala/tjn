import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../shared/classes/assets.dart';
import '../shared/theme/colors.dart';
import '../shared/widgets/widgets.dart';
import 'post_widgets/content_model.dart';
import 'post_widgets/post_card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int i = widget.index;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.neutralWhite,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor: AppColors.secondaryColorMain,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          child: GestureDetector(
            onTap: () => Navigator.of(context).maybePop(),
            child: const FaIcon(
              FontAwesomeIcons.arrowLeftLong,
            ),
          ),
        ),
        title: searchBar(),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.bell, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const FaIcon(FontAwesomeIcons.gear, size: 20),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        child: contents[i].pictureProfile ??
                            Image.asset(
                              TjnImages.defaultProfile,
                              width: 128,
                              height: 128,
                            ),
                        //Image.asset(TjnImages.profile1Big),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          padding: const EdgeInsets.all(2.985),
                          // margin: const EdgeInsets.only(top: 68, left: 25),
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
                  Positioned(
                    top: 141,
                    right: 16,
                    child: Container(
                      width: 131,
                      height: 32,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.neutralBlack),
                      ),
                      child: Row(
                        children: const [
                          FaIcon(FontAwesomeIcons.userPlus, size: 14),
                          SizedBox(width: 12),
                          Text('Connect'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  contents[i].name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text('@${contents[i].tag}'),
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4,
                isScrollable: true,
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(top: 24),
                controller: _tabController,
                indicatorColor: AppColors.secondaryColorMain,
                // labelPadding: const EdgeInsets.only(right: 45),
                labelColor: AppColors.neutralBlack,
                labelStyle: tabBarStyle(),
                unselectedLabelColor: AppColors.navColor,
                // indicatorPadding: const EdgeInsets.only(top: 5),
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
                    child: Text('Favourite Testimony'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('My Post'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Comments'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Likes'),
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
                        // physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        // primary: false,
                        itemCount: contents.length,
                        itemBuilder: (context, index) {
                          return PostCard(index: index);
                        },
                      ),
                    ),
                    const Center(child: Text('My Post')),
                    const Center(child: Text('Commennts')),
                    const Center(child: Text('Likes'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle tabBarStyle() {
  return const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppColors.neutralBlack,
  );
}
