import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home.dart';
import 'theme.dart';

void main() async {
  await dotenv.load();
  runApp(ProviderScope(
    child: MaterialApp(
      home: const Home(),
      theme: theme,
      darkTheme: ThemeData.dark(useMaterial3: true),
    ),
  ));
}
