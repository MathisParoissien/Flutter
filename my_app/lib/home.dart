import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: d_lightGray,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              DateSection(),
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
      height: 200,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
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
          DateContainer()
        ],
      ),
    );
  }
}

class DateContainer extends StatelessWidget {
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
