import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'home.dart';

void main() async {
  await dotenv.load();
  runApp(const MaterialApp(
    home: Home(),
  ));
}
