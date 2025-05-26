import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { food, work, leisure, travel }

final iconCategory = {
  Category.food: Icons.lunch_dining_outlined,
  Category.work: Icons.work,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight_takeoff,
};

class Expensemodel {
  Expensemodel({
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
  String id;
  String title;
  double amount;
  DateTime date;
  Category category;

  String getFormattedDate() {
    return formatter.format(date);
  }
}
