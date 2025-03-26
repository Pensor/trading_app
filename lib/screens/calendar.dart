import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:trading_app/models/event.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:trading_app/providers/events_provider.dart';

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
        child: GroupedListView(
          elements: events,
          groupBy: (event) {
            return DateFormat('y-M-d').format(event.date);
          },
          groupComparator: (event1, event2) {
            final date1 = DateFormat('y-M-d').parse(event1);
            final date2 = DateFormat('y-M-d').parse(event2);

            return date1.day - date2.day;
          },
          groupSeparatorBuilder: (String label) {
            final date = DateFormat('EEEE, MMMM d').format(DateFormat('y-M-d').parse(label));
            return ListTile(title: Text(date, textAlign: TextAlign.center));
          },
          itemBuilder: (context, event) => EventCard(event),
          itemComparator: (event1, event2) => event1.date.hour - event2.date.hour,
        ));
  }
}

class Calendar extends ConsumerWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Calendar"), centerTitle: true),
      body: events.when(
        data: (events) => EventList(events, () => ref.refresh(eventsProvider.future)),
        error: (error, stack) => Text('Error: $error'),
        loading: () => Center(child: const CircularProgressIndicator()),
      ),
    );
  }
}
