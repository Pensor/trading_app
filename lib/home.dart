import 'package:flutter/material.dart';
import 'package:trading_app/screens/calendar.dart';
import 'package:trading_app/screens/knowledge.dart';
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
];

class _HomeState extends State<Home> {
  final List<Widget> pages = [
    Knowledge(),
    Calendar(),
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
