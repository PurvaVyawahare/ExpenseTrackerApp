import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expensemodel.dart';

class ModelForm extends StatefulWidget {
  const ModelForm({super.key, required this.addExpense});
  final void Function(Expensemodel expense) addExpense;
  @override
  State<StatefulWidget> createState() {
    return _ModalFormState();
  }
}

class _ModalFormState extends State<ModelForm> {
  DateTime? selectedDate;
  Category _selectedCategory = Category.leisure;
  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();

  @override
  void dispose() {
    inputTitle.dispose();
    inputAmount.dispose();
    super.dispose();
  }

  void openCalender() async {
    DateTime now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(() {
      selectedDate = pickedDate;
    });
  }

  void validateInput() {
    final amount = double.tryParse(inputAmount.text);
    final isinvalidAmount = amount == null || amount <= 0;
    if (inputTitle.text.trim().isEmpty || isinvalidAmount) {
      showDialog(
        context: context,
        builder:
            (ctx) => AlertDialog(
              title: Text('Invalid Input'),
              content: Text('Please Enter a valid input'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: Text('Okay'),
                ),
              ],
            ),
      );
      return;
    }
    widget.addExpense(
      Expensemodel(
        title: inputTitle.text,
        amount: amount,
        date: selectedDate!,
        category: _selectedCategory,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 48, 20, 20),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
            controller: inputTitle,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: inputAmount,
                  decoration: InputDecoration(
                    label: Text('Amount'),
                    prefix: Text('Rs. '),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 20),
              Text(
                selectedDate == null
                    ? 'Select date'
                    : formatter.format(selectedDate!),
              ),
              IconButton(
                onPressed: openCalender,
                icon: Icon(Icons.calendar_month_outlined),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items:
                    Category.values
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(category.name.toUpperCase()),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              Spacer(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: validateInput,
                    child: Text('Save Expense'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
