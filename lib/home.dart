import 'package:flutter/material.dart';
import 'package:trading_app/screens/calendar.dart';
import 'package:trading_app/screens/journal.dart';
import 'package:trading_app/screens/knowledge.dart';
import 'package:trading_app/screens/models.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

const destinations = [
  NavigationDestination(
    icon: Icon(Icons.menu_book),
    label: 'Knowledge',
  ),
  NavigationDestination(
    icon: Icon(Icons.calendar_month),
    label: 'Calendar',
  ),
  NavigationDestination(
    icon: Icon(Icons.format_list_bulleted),
    label: 'Models',
  ),
  NavigationDestination(
    icon: Icon(Icons.edit_document),
    label: 'Journal',
  ),
];

class _HomeState extends State<Home> {
  final List<Widget> pages = [
    Knowledge(),
    Calendar(),
    Models(),
    Journal(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
        leadingExtendedNavRail: const Text('Trading App'),
        useDrawer: false,
        selectedIndex: _selectedIndex,
        destinations: destinations,
        body: (context) => pages[_selectedIndex],
        onSelectedIndexChange: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        });
  }
}
