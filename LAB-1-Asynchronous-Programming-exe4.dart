import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  final apiKey = 'YOUR_API_KEY'; // Replace with your actual API key
  final city = 'London'; // Replace with the desired city

  final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final temperature = data['main']['temp'];
      final description = data['weather'][0]['description'];

      print('Current Temperature: ${temperature.toStringAsFixed(1)}°C');
      print('Weather Conditions: $description');
    } else {
      print('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}

void main() {
  fetchWeatherData();
}
