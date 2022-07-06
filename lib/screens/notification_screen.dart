import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../widgets/notification_message_item.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  final messages = [
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'review notification',
      'created': DateTime.now(),
      'title': 'Please, post your review.',
      'message': 'How was it at shop abc123?',
    },
    {
      'status': 'booking status',
      'created': DateTime.now(),
      'title': 'Your booking has been confirmed.',
      'message': '2022-07-05 15:45 at shop abc123'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(titleNotifications)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: messages.map((item) {
              return NotificationMessageItem(
                item['status'] as String,
                item['created'] as DateTime,
                item['title'] as String,
                item['message'] as String,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
