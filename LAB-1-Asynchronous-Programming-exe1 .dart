import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {

  await Future.delayed(Duration(seconds: 2));

  
  List<String> quotes = [
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",

    "Success is not final, failure is not fatal: It is the courage to continue that counts.- Winston Churchill",

  "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs"
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  String randomQuote = quotes[index];

  return randomQuote;
}

Future<void> main() async {
  
  String quote = await fetchRandomQuote();

 
  print('Random Quote: $quote');
}