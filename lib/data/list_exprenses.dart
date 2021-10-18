import 'package:my_app/model/list_expense.dart';

final List<ListExpense> listExpenses = [
  ListExpense(amount: "15", title: 'chips'),
  ListExpense(amount: "75,23", title: "Tibo's Birthday"),
  ListExpense(amount: "2,43", title: "Vincent's Birthday"),
  ListExpense(amount: "390,12", title: "Roadtrip Food"),
  ListExpense(amount: "12", title: "Food for week"),
  ListExpense(amount: "345", title: "new shoes"),
  ListExpense(amount: "32", title: "car's gazoil"),
  ListExpense(amount: "13", title: "dog's food"),
  ListExpense(amount: "33", title: "Restaurant"),
  ListExpense(amount: "98", title: "Karting"),
  ListExpense(amount: "100", title: "new jean"),
];

final List<ExpenseDetail> listExpensesDetail = [
  ExpenseDetail(amount: "345,56", title: "Tibo's Birthday", more: true),
  ExpenseDetail(amount: "15", title: 'chips', more: false),
  ExpenseDetail(amount: "2,43", title: "Vincent's Birthday", more: true),
  ExpenseDetail(amount: "390,12", title: "Roadtrip Food", more: false),
  ExpenseDetail(amount: "12", title: "Food for week", more: false),
  ExpenseDetail(amount: "345", title: "new shoes", more: false),
  ExpenseDetail(amount: "32", title: "car's gazoil", more: false),
  ExpenseDetail(amount: "13", title: "dog's food", more: false),
  ExpenseDetail(amount: "98", title: "Karting", more: false),
  ExpenseDetail(amount: "100", title: "new jean", more: false),
];
