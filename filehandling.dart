import 'dart:io';

void main() async {
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  try {
    // Reading from a file
    print("Reading from $inputFilePath...");
    String fileContent = await readFile(inputFilePath);
    print("Content of the input file:");
    print(fileContent);

    // Writing to another file
    print("\nWriting to $outputFilePath...");
    String newData = "This is the new content to be written to the file.";
    await writeFile(outputFilePath, newData);

    print("New data written to $outputFilePath successfully.");
  } catch (e) {
    // Handle any errors during file operations
    print("An error occurred: $e");
  }
}

// Function to read from a file
Future<String> readFile(String path) async {
  try {
    final file = File(path);
    
    // Check if the file exists
    if (await file.exists()) {
      return await file.readAsString();
    } else {
      throw FileSystemException("File not found", path);
    }
  } catch (e) {
    throw Exception("Failed to read from file: $e");
  }
}

// Function to write to a file
Future<void> writeFile(String path, String content) async {
  try {
    final file = File(path);
    await file.writeAsString(content);
  } catch (e) {
    throw Exception("Failed to write to file: $e");
  }
}
