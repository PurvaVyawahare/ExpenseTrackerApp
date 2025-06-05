import 'package:expense_tracker/models/expensemodel.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expensemodel expense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Rs ${expense.amount.toStringAsFixed(2)}'),
                  Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      SizedBox(width: 5),
                      Text(expense.formattedDate),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
