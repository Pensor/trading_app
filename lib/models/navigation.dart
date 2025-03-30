import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class Chapter {
  final String label;
  final String content;

  const Chapter({required this.label, required this.content});
}

class ContentNavItem {
  final String label;
  final List<Chapter> sections;

  const ContentNavItem({required this.label, required this.sections});
}

final macNavigation = [
  SidebarItem(
    leading: MacosIcon(CupertinoIcons.book),
    label: Text('Knowledge'),
    disclosureItems: [
      SidebarItem(label: Text('Decoding the Algorithm')),
      SidebarItem(label: Text('Fractal Model')),
      SidebarItem(label: Text('GxT Model')),
    ],
  ),
  SidebarItem(
    leading: MacosIcon(CupertinoIcons.calendar),
    label: Text('Calendar'),
  ),
  SidebarItem(
    leading: MacosIcon(CupertinoIcons.list_bullet),
    label: Text('Models'),
  ),
  SidebarItem(
    leading: MacosIcon(CupertinoIcons.doc_text),
    label: Text('Journal'),
  ),
];

final androidNavigation = [
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

final contentNavigation = [
  ContentNavItem(label: 'Decoding the Algorithm', sections: [
    Chapter(label: "Chapter 1", content: "assets/content/algorithm/chapter-1.md"),
    Chapter(label: "Chapter 2", content: "assets/content/algorithm/chapter-2.md"),
    Chapter(label: "Chapter 3", content: "assets/content/algorithm/chapter-3.md"),
    Chapter(label: "Chapter 4", content: "assets/content/algorithm/chapter-4.md"),
    Chapter(label: "Chapter 5", content: "assets/content/algorithm/chapter-5.md"),
  ]),
  ContentNavItem(label: 'Fractal Model', sections: [
    Chapter(
      label: "Section 1: Concepts",
      content: "assets/content/fractal-model/section-1.md",
    ),
    Chapter(
      label: "Section 2: Swing Highs & Lows",
      content: "assets/content/fractal-model/section-2.md",
    ),
    Chapter(
      label: "Section 3: Swing Framework",
      content: "assets/content/fractal-model/section-3.md",
    ),
    Chapter(
      label: "Section 4: TTrades Fractal Model",
      content: "assets/content/fractal-model/section-4.md",
    ),
  ]),
  ContentNavItem(label: 'GxT Model', sections: [
    Chapter(
      label: "Section 1: Logic",
      content: "assets/content/gxt-model/section-1.md",
    ),
    Chapter(
      label: "Section 2: Profiling",
      content: "assets/content/gxt-model/section-2.md",
    ),
    Chapter(
      label: "Section 3: Entries",
      content: "assets/content/gxt-model/section-3.md",
    ),
  ])
];
