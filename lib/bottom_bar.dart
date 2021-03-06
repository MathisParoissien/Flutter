import 'package:flutter/material.dart';
import 'package:my_app/Pages/chat.dart';
import 'package:my_app/Pages/edit_profile_page.dart';
import 'package:my_app/main.dart';

import 'Pages/favorite.dart';
import 'Pages/profile.dart';
import 'Pages/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selected = 0;
  PageController pageController = PageController();
  final List<Widget> _screens = [
    const HomeScreen(),
    FavoriteScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  void onTapped(int index) {
    setState(() {
      _selected = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: d_lightGray,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_sharp), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
          fixedColor: d_purple,
          currentIndex: _selected,
          unselectedItemColor: d_item,
          onTap: onTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ));
  }
}
