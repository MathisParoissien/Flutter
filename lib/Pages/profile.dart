import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Pages/edit_profile_page.dart';
import 'package:my_app/main.dart';
import 'package:my_app/utils/user_preferences.dart';
import 'package:my_app/utils/user_stockage.dart';
import 'package:my_app/widget/appbar_profile.dart';
import 'package:my_app/widget/button_widget.dart';
import 'package:my_app/widget/profile_widget.dart';
import 'package:audioplayers/audioplayers.dart';

import '../model/user.dart';

import 'package:audioplayers/audioplayers.dart';

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

// AudioPlayer audioPlayer = AudioPlayer();
// AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
AudioCache player = AudioCache();

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late var _name = '';
  final controllerName = TextEditingController();
  late var _email = '';
  final controllerEmail = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final name = await UserStockage.getName();
    final email = await UserStockage.getEmail();
    setState(() {
      _name = name!;
      controllerName.text = name;
      _email = email!;
      controllerEmail.text = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => EditProfilePage()));
            },
            isEdit: false,
          ),
          const SizedBox(
            height: 24,
          ),
          // buildName(user),
          Column(
            children: [
              Text(
                controllerName.text,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                controllerEmail.text,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey),
              )
            ],
          ),
          // Text(name),
          const SizedBox(
            height: 24,
          ),
          Center(child: buildSoundButton()),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            user.email,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.grey),
          )
        ],
      );

  Widget buildSoundButton() => ButtonWidget(
      text: 'Click Me !',
      onCliked: () {
        player.play('cash.m4a');
      });
}
