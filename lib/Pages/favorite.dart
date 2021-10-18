import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/main.dart';
import 'package:my_app/widget/appbar_profile.dart';
import 'package:my_app/widget/list_expense_widget.dart';

import '../data/list_exprenses.dart';
import '../model/list_expense.dart';
import 'expense_details.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  // const FavoriteScreen({Key? key}) : super(key: key);
  final listKey = GlobalKey<AnimatedListState>();
  final List<ListExpense> items = List.from(listExpenses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_lightGray,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          'Expenses',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 30, color: Colors.black),
        ),
      ),
      body: AnimatedList(
          key: listKey,
          initialItemCount: items.length,
          itemBuilder: (context, index, animation) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExpenseDetailPage();
                  }));
                },
                child: ListItemWidget(
                  item: items[index],
                  animation: animation,
                  onClicked: () {
                    removeItem(index);
                  },
                ),
              )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: d_purple,
        child: Icon(Icons.add),
        onPressed: insertItem,
      ),
    );
  }

  void removeItem(int index) {
    final removedItem = items[index];
    items.removeAt(index);
    listKey.currentState!.removeItem(
        index,
        (context, animation) => ListItemWidget(
            item: removedItem, animation: animation, onClicked: () {}));
  }

  void insertItem() {
    final newIndex = 0;
    final newItem = (List.of(listExpenses)..shuffle()).first;
    items.insert(newIndex, newItem);
    listKey.currentState!.insertItem(newIndex);
  }
}
