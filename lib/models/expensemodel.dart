import 'package:uuid/uuid.dart';

final uid = Uuid();

enum Category { food, travel, work, leisure }

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
}
