import 'package:flutter/material.dart';
import 'package:my_app/main.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_lightGray,
      appBar: AppBar(title: Text('profile'),),
      );
  }
}