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

  void openModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Text('This is modal sheet');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [IconButton(onPressed: openModal, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          Text('Title'),
          SizedBox(height: 20),
          Text('Chart'),
          SizedBox(height: 20),
          Expense(expenses: _registeredExpense),
        ],
      ),
    );
  }
}
