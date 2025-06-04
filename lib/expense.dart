import 'package:expense_tracker/models/expensemodel.dart';
import 'package:flutter/material.dart';

class Expense extends StatelessWidget {
  const Expense({super.key, required this.expenses});
  final List<Expensemodel> expenses;
  @override
  Widget build(BuildContext context) {
    return Text('Hello');
  }
}
