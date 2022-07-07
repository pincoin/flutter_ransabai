import 'package:flutter/material.dart';

class NewBookingButton extends StatelessWidget {
  const NewBookingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final floatingActionButton = FloatingActionButton(
      child: const Icon(Icons.addchart),
      onPressed: () {},
    );
    return floatingActionButton;
  }
}
