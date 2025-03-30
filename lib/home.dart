import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:trading_app/screens/calendar.dart';
import 'package:trading_app/screens/journal.dart';
import 'package:trading_app/screens/knowledge.dart';
import 'package:trading_app/screens/models.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:trading_app/models/navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS) {
      return MacosWindow(
        sidebar: Sidebar(
          minWidth: 250,
          padding: EdgeInsets.only(left: 10),
          builder: (context, scrollController) {
            return SidebarItems(
              scrollController: scrollController,
              itemSize: SidebarItemSize.large,
              currentIndex: _selectedIndex,
              onChanged: (index) {
                setState(() => _selectedIndex = index);
              },
              items: macNavigation,
            );
          },
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            Knowledge(content: contentNavigation[0]),
            Knowledge(content: contentNavigation[1]),
            Knowledge(content: contentNavigation[2]),
            Calendar(),
            Models(),
            Journal(),
          ],
        ),
      );
    } else {
      return AdaptiveScaffold(
          leadingExtendedNavRail: const Text('Trading App'),
          useDrawer: false,
          selectedIndex: _selectedIndex,
          destinations: androidNavigation,
          body: (context) => [
                Knowledge(content: contentNavigation[0]),
                Calendar(),
                Models(),
                Journal(),
              ][_selectedIndex],
          onSelectedIndexChange: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          });
    }
  }
}
