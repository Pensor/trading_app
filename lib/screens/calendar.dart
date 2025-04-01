import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:trading_app/models/event.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:trading_app/providers/events_provider.dart';
import 'package:trading_app/widgets/event_card.dart';

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
            if (Platform.isMacOS) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  date,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              );
            }
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
    if (Platform.isMacOS) {
      return MacosScaffold(
        toolBar: ToolBar(
          centerTitle: true,
          title: Text("Calendar", textAlign: TextAlign.center),
        ),
        children: [
          ContentArea(builder: (context, scroll) {
            return events.when(
              data: (events) => EventList(events, () => ref.refresh(eventsProvider.future)),
              error: (error, stack) => Center(child: Text('$error', textAlign: TextAlign.center)),
              loading: () => Center(child: const ProgressCircle(radius: 20)),
            );
          })
        ],
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text("Calendar"), centerTitle: true),
        body: events.when(
          data: (events) => EventList(events, () => ref.refresh(eventsProvider.future)),
          error: (error, stack) => Center(child: Text('$error', textAlign: TextAlign.center)),
          loading: () => Center(child: const CircularProgressIndicator()),
        ),
      );
    }
  }
}
