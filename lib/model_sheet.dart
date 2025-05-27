import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class ModelSheet extends StatefulWidget {
  const ModelSheet({super.key});
  @override
  State<ModelSheet> createState() {
    return _ModelSheetState();
  }
}

class _ModelSheetState extends State<ModelSheet> {
  final _title = TextEditingController();
  final _amount = TextEditingController();
  DateTime? pickedDate;

  @override
  void dispose() {
    _title.dispose();
    _amount.dispose();
    super.dispose();
  }

  void closeModel() {
    Navigator.pop(context);
  }

  void openDate() async {
    DateTime now = DateTime.now();
    DateTime firstdate = DateTime(now.year - 1, now.month, now.day);
    final selectedDate = await showDatePicker(
      context: context,
      firstDate: firstdate,
      lastDate: now,
      initialDate: now,
    );
    setState(() {
      pickedDate = selectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _title,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: _amount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Amount'),
                    prefix: Text('\$ '),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Row(
                children: [
                  Text(
                    pickedDate == null
                        ? 'No Date Selected'
                        : formatter.format(pickedDate!),
                  ),
                  IconButton(
                    onPressed: openDate,
                    icon: Icon(Icons.calendar_month_outlined),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              TextButton(onPressed: closeModel, child: Text('Cancel')),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  print(_title);
                  print(_amount);
                },
                child: Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
