import 'package:intl/intl.dart';

class Event {
  final String name;
  final String currency;
  final DateTime date;
  final double actual;
  final double forecast;
  final double previous;

  static const Map<String, String> flags = {'EUR': '🇪🇺', 'USD': '🇺🇸', 'GBP': '🇬🇧'};

  const Event({
    required this.name,
    required this.currency,
    required this.date,
    required this.actual,
    required this.forecast,
    required this.previous,
  });

  String get flag {
    return flags[currency] ?? 'No Flag';
  }

  static bool relevant(Event event) {
    return flags.containsKey(event.currency);
  }

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['Name'] as String,
      currency: json['Currency'] as String,
      date: DateFormat('yyyy.MM.dd H:m:s').parse(json['Date']).subtract(Duration(hours: 1)),
      actual: json['Actual'] as double,
      forecast: json['Forecast'] as double,
      previous: json['Previous'] as double,
    );
  }
}
