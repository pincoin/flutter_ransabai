import 'package:flutter/material.dart';

class NotificationMessageItem extends StatelessWidget {
  final String status;
  final DateTime created;
  final String title;
  final String message;

  const NotificationMessageItem(
    this.status,
    this.created,
    this.title,
    this.message, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: null,
                  child: Text(
                    status,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                Text(created.toString()),
              ],
            ),
            Text(title),
            Text(message),
          ],
        ),
      ),
    );
  }
}
