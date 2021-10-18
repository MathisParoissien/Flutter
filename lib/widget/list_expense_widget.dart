import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';
import 'package:my_app/model/list_expense.dart';

class ListItemWidget extends StatelessWidget {
  final ListExpense item;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListItemWidget({
    required this.item,
    required this.animation,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FadeTransition(
        key: ValueKey(item.title),
        opacity: animation,
        // sizeFactor: animation,
        child: buildItem(),
      );

  Widget buildItem() => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
          ),
          title: Text(item.amount + '\$  - ' + item.title,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 16)),
          trailing: IconButton(
            icon: Icon(Icons.delete, size: 24),
            color: Colors.red,
            onPressed: onClicked,
          ),
        ),
      );
}
