import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/expense_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({required this.registeredExpense, super.key});
  final List<Expensemodel> registeredExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredExpense.length,
      itemBuilder: (context, index) {
        return ExpenseItem(expenses: registeredExpense[index]);
      },
    );
  }
}
