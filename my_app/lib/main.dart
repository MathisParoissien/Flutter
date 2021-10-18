import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

const d_blue = Color(0xFF69D2F1);
const d_purple = Color(0xFF6856E7);
const d_lightGray = Color(0xFFF6FAFE);
const d_item = Color(0xFFEAE8FF);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank App',
      home: BottomBar(),
    );
  }
}
