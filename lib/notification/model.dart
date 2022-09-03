import 'package:flutter/material.dart';

class NotificationModel {
  Widget? displayPicture;
  String name;
  String title;
  String time;

  NotificationModel({
    this.displayPicture,
    required this.name,
    required this.time,
    required this.title,
  });
}

List<NotificationModel> notify = [
  NotificationModel(
    name: 'Adebimpe Shobowale',
    time: 'Just Now',
    title: 'Sent connection request',
  ),
  NotificationModel(
    name: 'Kristin Watson',
    time: '3m',
    title: 'Liked your comment',
  ),
  NotificationModel(
      name: 'Brooklyn Simmons', time: '20m', title: 'Liked your post'),
  NotificationModel(
    name: 'Ralph Edwards',
    time: '12:30 PM',
    title: 'Sent connection request',
  ),
  NotificationModel(
    name: 'Eleanor Pena',
    time: '7:20 PM',
    title: 'Liked your post',
  ),
  NotificationModel(
    name: 'Kristin Watson',
    time: '8:40 PM',
    title: 'Sent connection request',
  ),
  NotificationModel(
    name: 'Cameron Williamson',
    time: '11:00 PM',
    title: 'Sent connection request',
  ),
];
