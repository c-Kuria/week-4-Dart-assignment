import 'dart:io';
import 'package:intl/intl.dart';

void main() async {
  // List to store manipulated strings and their timestamps
  List<String> entries = [];

  // a file to store the results
  String filePath = 'output.txt';
  File outputFile = File(filePath);

  // Infinite loop to take multiple user inputs (until "exit" is typed)
  while (true) {
    print('Enter a string or type "exit" to quite:');
    String? userInput = stdin.readLineSync();

    if (userInput == null || userInput.toLowerCase() == 'exit') {
      print('Exiting...');
      break;
    }

    // Perform string manipulation: uppercase and reverse the string
    String upperCaseInput = userInput.toUpperCase();
    String reversedInput = userInput.split('').reversed.join('');

    // Get the current date and time
    String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    // Create an entry combining the string manipulation results and the timestamp
    String entry =
        'Original: $userInput, Uppercase: $upperCaseInput, Reversed: $reversedInput, Timestamp: $timestamp';

    // Store the entry in the list
    entries.add(entry);

    // Append the entry to the file
    await outputFile.writeAsString('$entry\n', mode: FileMode.append);
    print('Entry added and saved to file.\n');
  }

  // Print all the entries saved in the list
  print('All entries:');
  for (var entry in entries) {
    print(entry);
  }
}
