import 'package:expense_tracker/expense_list.dart';
import 'package:expense_tracker/model_sheet.dart';
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
    Expensemodel(
      title: 'Restaurant',
      amount: 2.512,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expensemodel(
      title: 'College Fees',
      amount: 1256.2,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];
  void showModalOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return ModelSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: showModalOverlay, icon: Icon(Icons.add)),
        ],
      ),
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
