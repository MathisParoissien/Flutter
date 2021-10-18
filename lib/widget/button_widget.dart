import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onCliked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onCliked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: StadiumBorder(),
          onPrimary: Colors.white),
      onPressed: onCliked,
      child: Text(text));
}
