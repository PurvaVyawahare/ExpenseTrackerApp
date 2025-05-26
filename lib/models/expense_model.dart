import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Expensemodel {
  Expensemodel({required this.title, required this.amount, required this.date})
    : id = uuid.v4();
  String id;
  String title;
  double amount;
  DateTime date;
}
