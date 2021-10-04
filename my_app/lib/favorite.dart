import 'package:flutter/material.dart';
import 'package:my_app/main.dart';


class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_lightGray,
      appBar: AppBar(title: const Text('favorite'),),
      );
  }
}