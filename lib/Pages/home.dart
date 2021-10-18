import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';
import 'package:my_app/widget/appbar_profile.dart';

import '../Buttons/grey_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: d_lightGray,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DateSection(),
              // GroupsSection(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: CardsSection(
                  color: d_purple,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: CardsSection(color: d_blue),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: CardsSection(color: d_purple),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: CardsSection(color: d_blue),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: CardsSection(color: d_purple),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: CardsSection(color: d_blue),
              ),
            ],
          ),
        ));
  }
}

class DateSection extends StatelessWidget {
  const DateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      padding: const EdgeInsets.fromLTRB(30, 70, 30, 10),
      child: Row(
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: -15,
            children: [
              Text('Share',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 30)),
              Text(
                'Money',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 30),
              )
            ],
          ),
          Expanded(
              child: Container(
            height: 40,
          )),
          const DateContainer()
        ],
      ),
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 0,
        children: [
          Text('24',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14)),
          Text(
            'SEP',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 11, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class CardsSection extends StatelessWidget {
  var color;

  CardsSection({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          children: [
            Column(
              children: [
                Text('Family',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    )),
                Text('8 people',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey[color == d_purple ? 400 : 200])),
                Container(
                  height: 50,
                  // rounded profile pictures
                )
              ],
            ),
            Expanded(child: Container(height: 150)),
            Column(
              children: [
                Text('27 SEPT',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey[color == d_purple ? 400 : 200])),
                Container(
                  height: 25,
                ),
                ButtonGrey(),
              ],
            ),
          ],
        ),
      ),
      color: color,
    );
  }
}

class GroupsSection extends StatelessWidget {
  const GroupsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      tileColor: Colors.red,
      leading: Icon(Icons.person),
      title: Text('Test'),
      trailing: Text('tes12'),
    );
  }
}
