import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/main.dart';
import 'package:my_app/utils/user_preferences.dart';
import 'package:my_app/utils/user_stockage.dart';
import 'package:my_app/widget/appbar_profile.dart';
import 'package:my_app/widget/button_widget.dart';
import 'package:my_app/widget/profile_widget.dart';
import 'package:my_app/widget/textfield_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'model/user.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      // final imageTemporary = File(image.path);
      final imagePermanent = await saveImagePermanently(image.path);
      setState(() {
        this.image = imagePermanent;
      });
    } on PlatformException catch (e) {}
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  User user = UserPreferences.myUser;
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
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            if (image != null)
              Center(
                child: Stack(
                  children: [
                    ClipOval(
                        child: Material(
                      color: Colors.transparent,
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                        width: 128,
                        height: 128,
                      ),
                    )),
                    Positioned(
                        bottom: 0,
                        right: 4,
                        child: buildCircle(
                            color: Colors.white,
                            all: 3,
                            child: buildCircle(
                                color: d_blue,
                                all: 8,
                                child: const Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: Colors.white,
                                ))))
                  ],
                ),
              )
            else
              ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {
                  pickImage();
                },
              ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Full Name'),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                  controller: controllerName,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                  controller: controllerEmail,
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ButtonWidget(
              onCliked: () async {
                await UserStockage.setName(controllerName.text);
                await UserStockage.setEmail(controllerEmail.text);
              },
              text: 'Save',
            )
          ],
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
          child: Container(
        padding: EdgeInsets.all(all),
        child: child,
        color: color,
      ));
}
