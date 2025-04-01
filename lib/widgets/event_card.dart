import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trading_app/models/event.dart';

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
