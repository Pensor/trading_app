import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'home.dart';
import 'theme.dart';

void main() async {
  await dotenv.load();
  runApp(MaterialApp(
    home: const Home(),
    theme: theme,
    darkTheme: ThemeData.dark(useMaterial3: true),
  ));
}
