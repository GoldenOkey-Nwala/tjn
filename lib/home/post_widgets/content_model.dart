import 'package:flutter/material.dart';
import 'package:tjn/shared/classes/assets.dart';

class PostModel {
  String name;
  String? tag;
  String location;
  String testimony;
  Image? picture;
  Image? profilePicture;
  Image? postPicture;
  Image? pictureProfile;

  PostModel({
    required this.name,
    this.tag,
    required this.location,
    required this.testimony,
    this.picture,
    this.profilePicture,
    this.postPicture,
    this.pictureProfile,
  });
}

List<PostModel> contents = [
  PostModel(
    name: 'Adembimpe Showbowale',
    location: 'Serbia',
    testimony:
        '''I blessed God for his protection over my life. Last week I was involved in an accident that almost. \n\nThis accident almost took my life, my husband was driving, and we were both listening to our favourite Gospel song.  \n\nWe were driving on 180Kilometer/hr, the road was free and there were no issues not untill my husband noticed a porthole and wanted to reduce his speed and he noticed his break refuse to work. \n\nIt was the panic we had that made us loose control and hit the closest car to us. We blessed that no life was lost at the process. Thank you Jesus''',
    picture: Image.asset(TjnImages.post1),
    postPicture: Image.asset(TjnImages.bigPost1),
    profilePicture: Image.asset(TjnImages.profile1Big, width: 48, height: 48),
    pictureProfile: Image.asset(TjnImages.profile1Big, width: 128, height: 128),
    tag: 'showbimpe',
  ),
  PostModel(
    name: 'Robert Fox',
    location: 'Big Kohuma Burger Ltd.',
    testimony:
        'Everybody help me to appreciate God, last week monday, I will trusting God to come through for me and he came through, I struggled with',
    tag: 'robert_fox',
    profilePicture: Image.asset(TjnImages.profile7),
  ),
  PostModel(
    name: 'Omobolarinwa',
    location: 'Gillette',
    testimony:
        'Last year I have been tryig to relocate to a new country due to the incendent that. Everybody help me to appreciate God, last week monday, I will trusting God to come through for me and he came through, I struggled with',
    profilePicture: Image.asset(TjnImages.profile6),
    picture: Image.asset(TjnImages.post6),
    postPicture: Image.asset(TjnImages.post6),
    tag: 'bolarinwa',
  ),
  PostModel(
    name: 'Eleanor Pena',
    location: 'Saint Barthelemy',
    testimony:
        'After 10 years of waiting, my family and I welcome our baby into the world. This journey has not. Everybody help me to appreciate God, last week monday, I will trusting God to come through for me and he came through, I struggled with',
    // profilePicture: Image.asset(TjnImages.profile7),
  ),
  PostModel(
    name: 'Guy Hawkins',
    location: 'Inglewood, Maine 98380',
    testimony:
        'I thank God for my wive, last year she has an accident but now she has fully recovered. Thank you Jesus. After 10 years of waiting, my family and I welcome our baby into the world. This journey has not. Everybody help me to appreciate God, last week monday, I will trusting God to come through for me and he came through, I struggled with',
    // profilePicture: Image.asset(TjnImages.profile7),
    tag: 'hawkins',
  ),
  PostModel(
    name: 'Kristin Watson',
    location: 'Pembroke Pines',
    testimony:
        'I want to worship for what he has done for my family, I received a call from my brother, he had immegration issues and God came through for him. After 10 years of waiting, my family and I welcome our baby into the world. This journey has not. Everybody help me to appreciate God, last week monday, I will trusting God to come through for me and he came through, I struggled with',
    // profilePicture: Image.asset(TjnImages.profile7),
    tag: 'kristins',
  )
];
