import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/data/list_exprenses.dart';
import 'package:my_app/model/list_expense.dart';
import 'package:my_app/widget/list_expense_widget.dart';

class ExpenseDetailPage extends StatefulWidget {
  @override
  _ExpenseDetailPageState createState() => _ExpenseDetailPageState();
}

class _ExpenseDetailPageState extends State<ExpenseDetailPage> {
// class ExpenseDetailPage extends StatelessWidget {
  final listKey = GlobalKey<AnimatedListState>();
  final List<ExpenseDetail> items = List.from(listExpensesDetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text("Jhone Monroe's expenses"),
              subtitle: Text("Family"),
              trailing: Text("+ 340,54 \$"),
              leading: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            for (var item in items) card(item: item),
            // card(),
            // card(),
            // card(),
            // card(),
            // card(),
            // card(),
            // card(),
          ],
        )));
  }

  Widget card({required ExpenseDetail item}) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: item.more == true
                  ? Colors.green.withOpacity(0.2)
                  : Colors.red.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: Icon(
            item.more == true ? Icons.add_circle : Icons.remove_circle,
            color: item.more == true ? Colors.lightGreen : Colors.red,
          ),
          title: Text(
              "${item.more == true ? 'Deposit' : 'Expense'} for : ${item.title}",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 16)),
          trailing: Text(
            '${item.more == true ? '+' : '-'} ${item.amount} \$',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: item.more == true ? Colors.lightGreen : Colors.red),
          ),
        ));
  }
}
