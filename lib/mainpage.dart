import 'package:expense_tracker/models/expensemodel.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/expense.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MainpageState();
  }
}

class _MainpageState extends State<Mainpage> {
  final _registeredExpense = [
    Expensemodel(
      title: 'CollegeFees',
      amount: 2000,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expensemodel(
      title: 'Cafe',
      amount: 500,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Title'),
        SizedBox(height: 20),
        Text('Chart'),
        SizedBox(height: 20),
        Expense(expenses: _registeredExpense),
      ],
    );
  }
}
