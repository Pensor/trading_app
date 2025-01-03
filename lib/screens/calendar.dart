import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:trading_app/models/event.dart';

Future<List<Event>> fetchCalendar() async {
  final response = await http.get(
      Uri.parse('${dotenv.env['NEWS_URL']}/news/api/forex-factory/calendar/week'),
      headers: {'Authorization': 'Api-Key ${dotenv.env['NEWS_API_KEY']}'});

  final parsed = (jsonDecode(response.body) as List).cast<Map<String, dynamic>>();

  final events = parsed.map((json) => Event.fromJson(json)).where(Event.relevant).toList();

  print("fetching...");

  return events;
}

class EventCard extends StatelessWidget {
  const EventCard(this.event, {super.key});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(DateFormat("HH:mm").format(event.date)),
              Text(event.name),
              Text(event.flag, textScaler: TextScaler.linear(2)),
            ],
          ),
        ));
  }
}

class EventList extends StatelessWidget {
  const EventList(this.events, this.onRefresh, {super.key});

  final List<Event> events;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.cyan[900],
      onRefresh: onRefresh,
      child: ListView(
        children: [
          // Container(
          //   color: Colors.cyan[900],
          //   child: Text(
          //     DateFormat("d.M.yyyy").format(DateTime.now()),
          //     textAlign: TextAlign.center,
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          ...events.map((event) => EventCard(event)),
        ],
      ),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late Future<List<Event>> events;

  @override
  void initState() {
    super.initState();
    events = fetchCalendar();
  }

  Future<void> handleRefresh() async {
    setState(() {
      events = fetchCalendar();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalender"), centerTitle: true),
      body: FutureBuilder(
          future: events,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            if (snapshot.hasData) {
              return EventList(snapshot.data!, handleRefresh);
            }
            return Center(child: const CircularProgressIndicator());
          }),
    );
  }
}
