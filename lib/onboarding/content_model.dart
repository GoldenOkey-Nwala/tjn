import 'package:flutter/cupertino.dart';

class OnBoardContent {
  String title;
  String subtitle;
  NetworkImage image;

  OnBoardContent({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoardContent> content = [
  OnBoardContent(
    title: 'Let\'s Encourage \n Other Belivers Today',
    subtitle: 'Share your testimonies \nto encourage someone today',
    image: const NetworkImage(
        'two-people-holding-hands-together-with-love-warmth-wooden-table_1150-26175.jpg'),
  ),
  OnBoardContent(
    title: 'Get uplifted by \nPeople’s Testimonies',
    subtitle:
        'Read testimonies and be \ninspired by testimonies from \nthousands of users',
    image: const NetworkImage(
        'silhouette-people-helping-other-hiker-climbing-rock-mountain_28629-1028.png'),
  ),
  OnBoardContent(
    title: 'Invite belivers to \nshare & encourage other',
    subtitle: 'Download and share \ntestomonies with friends and \nfamily',
    image: const NetworkImage(
        'closeup-shot-person-holding-up-bible-with-blurred-background_181624-36473.png'),
  )
];
