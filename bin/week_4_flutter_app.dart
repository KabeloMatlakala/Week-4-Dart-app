import 'dart:io';

void stringManipulation() 
{
  String str1 = "Hello";
  String str2 = "World";

  // Concatenation
  String concatenated = str1 + ' ' + str2;
  print('Concatenated: $concatenated');

  // Interpolation
  print('Interpolated: ${str1} ${str2}');

  // Substring
  String substring = str1.substring(1, 4);  // "ell"
  print('Substring: $substring');

  // Case conversion
  print('Uppercase: ${str1.toUpperCase()}');
  print('Lowercase: ${str2.toLowerCase()}');

  // Reverse string
  String reversed = str1.split('').reversed.join('');
  print('Reversed: $reversed');

  // String length
  print('Length: ${str1.length}');
}


void collectionsDemo() 
{
  // List
  List<String> fruits = ['apple', 'banana', 'cherry'];
  fruits.add('date');
  print('List: $fruits');
  fruits.remove('banana');
  print('After removal: $fruits');

  // Set
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  print('Set: $numbers');
  numbers.remove(3);
  print('After removal: $numbers');

  // Map
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};
  ages['Charlie'] = 22;
  print('Map: $ages');
  ages.remove('Bob');
  print('After removal: $ages');

  // Iterating over collections
  print('List Iteration:');
  for (var fruit in fruits) {
    print(fruit);
  }

  print('Set Iteration:');
  for (var number in numbers) {
    print(number);
  }

  print('Map Iteration:');
  ages.forEach((name, age) => print('$name: $age'));
}

void fileHandlingDemo() async {
  try {
    // Reading from a file
    String filePath = 'input.txt';
    String content = await File(filePath).readAsString();
    print('File content: $content');

    // Writing to a file
    String outputFilePath = 'output.txt';
    await File(outputFilePath).writeAsString('This is new content');
    print('Written to file: $outputFilePath');
  } catch (e) {
    print('Error during file operation: $e');
  }
}

void dateTimeDemo() {
  DateTime now = DateTime.now();
  print('Current DateTime: $now');

  // Formatting dates
  String formattedDate = '${now.day}-${now.month}-${now.year}';
  print('Formatted Date: $formattedDate');

  // Parsing dates
  DateTime parsedDate = DateTime.parse('2023-09-15');
  print('Parsed Date: $parsedDate');

  // Manipulating dates
  DateTime futureDate = now.add(Duration(days: 10));
  print('Future Date (+10 days): $futureDate');

  DateTime pastDate = now.subtract(Duration(days: 5));
  print('Past Date (-5 days): $pastDate');

  // Difference between two dates
  Duration difference = now.difference(parsedDate);
  print('Difference in days: ${difference.inDays}');
}


void smallApplication() async {
  print('Enter a string:');
  String? input = stdin.readLineSync();
  if (input != null) {
    // Perform string manipulation
    String reversed = input.split('').reversed.join('');
    int length = input.length;

    // Store results in a collection
    List<String> results = [];
    results.add('Original: $input');
    results.add('Reversed: $reversed');
    results.add('Length: $length');

    // Log the date and time of the entry
    DateTime now = DateTime.now();
    results.add('Logged at: $now');

    // Write results to a file
    String outputFilePath = 'results.txt';
    await File(outputFilePath).writeAsString(results.join('\n'));
    print('Results written to file: $outputFilePath');
  }
}


void main() 
{
  smallApplication();
}
