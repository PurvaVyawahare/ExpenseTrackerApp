import 'package:expense_tracker/modelform.dart';
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
      isScrollControlled: true,
      builder: (ctx) {
        return ModelForm(addExpense: addExpense);
      },
    );
  }

  void addExpense(expense) {
    setState(() {
      _registeredExpense.add(expense);
    });
  }

  void removeExpense(expense) {
    final expenseIndex = _registeredExpense.indexOf(expense);
    setState(() {
      _registeredExpense.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Expense deleted'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpense.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text('Please Start adding the expenses !!!'),
    );

    if (_registeredExpense.isNotEmpty) {
      mainContent = Expense(
        expenses: _registeredExpense,
        onRemove: removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [IconButton(onPressed: openModal, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [Text('Chart'), SizedBox(height: 20), mainContent],
      ),
    );
  }
}
