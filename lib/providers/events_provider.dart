import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:trading_app/models/event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';

part 'events_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Event>> events(Ref ref) async {
  final response = await http.get(
      Uri.parse('${dotenv.env['NEWS_URL']}/news/api/forex-factory/calendar/week'),
      headers: {'Authorization': 'Api-Key ${dotenv.env['NEWS_API_KEY']}'});

  final parsed = (jsonDecode(response.body) as List).cast<Map<String, dynamic>>();

  final events = parsed.map((json) => Event.fromJson(json)).where(Event.relevant).toList();

  return events;
}
