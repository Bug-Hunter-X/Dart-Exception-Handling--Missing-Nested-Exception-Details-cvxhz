```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = json.decode(response.body);
      // Access data (example)
      final name = jsonData['name'];
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // This will only print the top-level error
    // rethrow; // Uncomment to propagate the error
  }
}
```