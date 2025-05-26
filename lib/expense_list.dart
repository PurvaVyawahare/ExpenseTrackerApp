import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({required this.registeredExpense, super.key});
  final List<Expensemodel> registeredExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredExpense.length,
      itemBuilder: (context, index) {
        return Text(registeredExpense[index].title);
      },
    );
  }
}
