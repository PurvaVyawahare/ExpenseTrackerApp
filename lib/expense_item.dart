import 'package:expense_tracker/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({required this.expenses, super.key});
  final Expensemodel expenses;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(expenses.title),
          SizedBox(height: 10),
          Row(
            children: [
              Text('\$${expenses.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(iconCategory[expenses.category]),
                  SizedBox(width: 5),
                  Text(expenses.getFormattedDate()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
