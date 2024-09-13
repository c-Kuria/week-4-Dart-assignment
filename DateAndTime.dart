import 'package:intl/intl.dart';

void main() {
  // 1. Current Date and Time
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // 2. Formatting a DateTime
  var formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  String formattedDate = formatter.format(now);
  print("Formatted Date and Time: $formattedDate");

  // 3. Parsing a Date from a String
  String dateString = "2023-09-15 14:30:00";
  DateTime parsedDate = DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateString);
  print("Parsed DateTime from String: $parsedDate");

  // 4. Manipulating Dates (Adding/Subtracting Days)
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 3));

  print("Future Date (+5 days): $futureDate");
  print("Past Date (-3 days): $pastDate");

  // 5. Calculating the Difference Between Two Dates
  DateTime anotherDate = DateTime(2024, 01, 01);
  Duration difference = anotherDate.difference(now);

  print("Difference between $now and $anotherDate is ${difference.inDays} days");

  // 6. Custom Date Construction
  DateTime customDate = DateTime(2023, 12, 25, 18, 30); // Year, Month, Day, Hour, Minute
  print("Custom Date: $customDate");
}
