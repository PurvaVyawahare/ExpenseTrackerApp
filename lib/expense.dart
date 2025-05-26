import 'package:expense_tracker/expense_list.dart';
import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<Expense> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expense> {
  final List<Expensemodel> _registeredExpense = [
    Expensemodel(title: 'Restaurant', amount: 2.512, date: DateTime.now()),
    Expensemodel(title: 'College Fees', amount: 1256.2, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('This is our chart'),
          SizedBox(height: 20),
          Expanded(child: ExpenseList(registeredExpense: _registeredExpense)),
        ],
      ),
    );
  }
}
