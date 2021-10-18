import 'package:flutter/material.dart';

class ListExpense {
  final String title;
  final String amount;

  const ListExpense({
    required this.title,
    required this.amount,
  });
}

class ExpenseDetail {
  final bool more;
  final String title;
  final String amount;

  const ExpenseDetail(
      {required this.more, required this.title, required this.amount});
}
