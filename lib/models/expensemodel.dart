import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

final formatter = DateFormat.yMd();

final uid = Uuid();

enum Category { food, travel, work, leisure }

const categoryIcons = {
  Category.food: Icons.lunch_dining_outlined,
  Category.leisure: Icons.movie_creation_outlined,
  Category.travel: Icons.flight_takeoff_outlined,
  Category.work: Icons.work_outline,
};

class Expensemodel {
  Expensemodel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uid.v4();
  String id;
  String title;
  double amount;
  DateTime date;
  Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
