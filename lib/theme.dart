import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    shadowColor: Colors.grey,
    scrolledUnderElevation: 1,
    surfaceTintColor: Colors.transparent,
  ),
  scaffoldBackgroundColor: Colors.white,
  drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
  navigationRailTheme: NavigationRailThemeData(backgroundColor: Colors.white),
);
