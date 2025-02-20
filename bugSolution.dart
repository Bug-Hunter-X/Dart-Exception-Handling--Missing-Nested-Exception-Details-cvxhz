```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data')).catchError((error) {
      print('HTTP Request Error: $error');
      throw Exception('HTTP request failed');
    });
    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        final name = jsonData['name'];
        print('Name: $name');
      } on FormatException catch (e) {
        print('JSON Format Exception: $e');
        rethrow; // Or handle the specific exception
      } catch (e) {
        print('Error decoding JSON: $e');
        rethrow; // Or handle the generic exception
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Top level Error: $e');
    // Handle or rethrow as needed
  }
}
```