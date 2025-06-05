import 'package:expense_tracker/expenseitem.dart';
import 'package:expense_tracker/models/expensemodel.dart';
import 'package:flutter/material.dart';

class Expense extends StatelessWidget {
  const Expense({super.key, required this.expenses, required this.onRemove});
  final List<Expensemodel> expenses;
  final void Function(Expensemodel expense) onRemove;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder:
            (context, index) => Dismissible(
              key: ValueKey(expenses[index]),
              onDismissed: (direction) {
                onRemove(expenses[index]);
              },
              child: ExpenseItem(expense: expenses[index]),
            ),
      ),
    );
  }
}
