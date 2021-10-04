import 'package:flutter/material.dart';
import 'package:my_app/chat.dart';
import 'package:my_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';

// class ButtonGrey extends StatefulWidget {
//   final Widget child;
//   final GestureTapCallback onPressed;

//   const ButtonGrey({
//     required this.onPressed,
//   });

//   @override
//   _ButtonGreyState createState() => _ButtonGreyState();
// }

class ButtonGrey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.grey.withOpacity(0.04);
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed))
                  return Colors.grey.withOpacity(0.12);
                return null; // Defer to the widget's default.
              },
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.white)))),
        // onPressed: () {},
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        child: Text('Join',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.white,
            )));
  }
}
